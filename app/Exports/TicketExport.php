<?php

namespace App\Exports;

use App\Models\Ticket;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

class TicketExport implements FromCollection, WithHeadings, WithMapping
{
    protected $eventId;

    // Terima ID Event saat class dipanggil
    public function __construct($eventId)
    {
        $this->eventId = $eventId;
    }

    /**
    * Ambil data tiket yang sesuai Event ID
    */
    public function collection()
    {
        return Ticket::with(['transaction'])
            ->whereHas('transaction', function($query) {
                $query->where('event_id', $this->eventId);
                $query->where('status', 'paid'); // Hanya ambil yang sudah bayar
            })
            ->get();
    }

    /**
    * Judul Kolom di Excel
    */
    public function headings(): array
    {
        return [
            'Kode Tiket',
            'Nama Pembeli',
            'Email Pembeli',
            'No HP',
            'NIK',
            'Bank',
            'Status Check-In',
            'Tanggal Beli',
        ];
    }

    /**
    * Isi Data Per Baris
    */
    public function map($ticket): array
    {
        return [
            $ticket->unique_code,
            $ticket->transaction->customer_name,
            $ticket->transaction->customer_email,
            $ticket->transaction->customer_phone,
            $ticket->transaction->customer_nik,
            $ticket->transaction->bank_name,
            $ticket->is_checked_in ? 'SUDAH DIPAKAI' : 'BELUM DIPAKAI',
            $ticket->created_at->format('d-m-Y H:i'),
        ];
    }
}
