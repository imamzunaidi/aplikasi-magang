@extends('template.master')
@section('contents')
<div class="blog-page area-padding">
    <div class="container">
        <div class="card mt-5">
            <div class="card-body">
                <div class="col-md-12">
                    <div class="text-center"><h2>HASIL LAMARAN</h2></div>
                    <hr>
                        @if (session()->has('err_message'))
                        <div class="alert alert-danger alert-dismissible" role="alert" auto-close="120">
                            <strong>Error! </strong>{{ session()->get('err_message') }}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    @endif
                    @if (session()->has('suc_message'))
                        <div class="alert alert-success alert-dismissible" role="alert" auto-close="120">
                            <strong>Success! </strong>{{ session()->get('suc_message') }}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    @endif
                    <table class = "table table-hover table-striped" id = "basic-datatables">
                        <thead>
                            <tr>
                                <td>No</td>
                                <td>Nama Lengkap</td>
                                <td>Jenis Kelamin</td>
                                <td>Tempat, Tanggal Lahir</td>
                                <td>Tanggal Pengajuan</td>
                                <td>Jurusan</td>
                                <td>Status Berkas</td>
                                <td>Action</td>
                            </tr>
                        </thead>
                        <tbody>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection