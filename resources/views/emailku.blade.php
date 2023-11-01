@component('mail::message')
# Introduction

Selamat Anda Diterima Pada Seleksi Magang Yang Telah Di Ajukan

@component('mail::button', ['url' => 'http://localhost/aplikasi-magang/public/'])
Aplikasi Magang
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
