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
                    <table id="table" class="table table-striped table-hover" cellspacing="0" width="100%">
                        <thead >
                            <tr >
                                <th width = "5%">No.</th>
                                <th>Nama</th>
                                <th>Gambar</th>
                                <th>Email</th>
                                <th>No Telepon</th>
                                <th>Mulai</th>
                                <th>Selesai</th>
                                <th>Keterangan</th>
                                <th>Status Syarat</th>
                                <th>Status</th>
                                <th class="text-center" width = "20%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1;?>
                            @foreach ($data['data_lamaran'] as $item)
                                <tr>
                                    <td>{{$no++}}</td>
                                    <td>{{$item->nama_lengkap}}</td>
                                    <td width = "10%" class ="text-center"><img src="<?= asset('')?>gambar/<?= $item->gambar?>" alt="" width ="90%"></td>
                                    <td>{{$item->email}}</td>
                                    <td>{{$item->no_telp}}</td>
                                    <td>{{$item->dari_tanggal}}</td>
                                    <td>{{$item->sampai_tanggal}}</td>
                                    <td>
                                        @if ($item->keterangan != null)
                                            {{$item->keterangan}}
                                        @elseif ($item->syarat != null)
                                            {{$item->syarat}}
                                        @endif
                                    </td>
                                    <td>{{$item->status_syarat}}</td>
                                    <td>{{$item->status_pendaftaran}}</td>
                                    <td width = "20%" class="text-center">
                                        <a href="<?= url('detail-lamaran/' . $item->id_pendaftaran) ?>" class="btn btn-info btn-sm"><i class="fas fa-eye"></i></a>
                                        @if ($item->status_pendaftaran == 'diterima')
                                            <a href="<?= url('cetak-lamaran/' . $item->id_pendaftaran) ?>" class="btn btn-warning btn-sm" target = "_BLANK"><i class="fas fa-print"></i></a>
                                        @elseif ($item->status_pendaftaran == 'diterima bersyarat' AND $item->status_syarat == null)
                                            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#Detail{{$item->id_pendaftaran}}">
                                                <i class="fa fa-edit"></i>
                                            </button>
                                        @endif
                                        
                                    </td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@foreach ($data['data_lamaran'] as $item)
<div class="modal fade" id="Detail{{$item->id_pendaftaran}}">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <div class="modal-header">
                <h4 class="modal-title">Verifikasi</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            {{-- <form action="{{url('update-tidak-diterima')}}" method="post" enctype="multipart/form-data"> --}}
                <div class="modal-body">
                    @csrf
                    <h6>Apakah Ingin Melakukan Verifikasi Data ?</h6>

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <a href="{{url('tidak-setuju-lamaran/'.$item->id_pendaftaran)}}" class="btn btn-danger">Tidak Setuju</a>
                    <a href="{{url('setuju-lamaran/'.$item->id_pendaftaran)}}" class="btn btn-success">Setuju</a>
                </div>
            {{-- </form> --}}
        </div>
    </div>
</div>
@endforeach
@endsection
