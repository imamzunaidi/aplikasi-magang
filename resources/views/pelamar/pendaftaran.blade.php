@extends('template.master')
@section('contents')
<div class="blog-page area-padding">
    <div class="container">
        <div class="card mt-5">
            <div class="card-body">
                <div class="col-md-12">
                    <div class="text-center"><h2>PENDAFTARAN</h2></div>
                    <hr>
                   <form action="{{url('insert-pendaftaran')}}" method="post" enctype='multipart/form-data' >
                    @csrf
                        <div class="form-group">
                            <label for="">Motivasi Melamar</label>
                            <textarea name="motivasi" class="form-control" id="" cols="30" rows="5" ></textarea>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Dari Tanggal</label>
                                    <input type="date" name = "dari_tanggal" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Sampai Tanggal</label>
                                    <input type="date" name = "sampai_tanggal" class="form-control" required>
                                </div>
                            </div>
                        </div>
                
                        <div class="form-group ">
                            <label for="frist_name">Gambar</label>
                            <input id="frist_name" type="file" class="form-control" name="gambar" autofocus required>
                        </div>
                        <div class="form-group ">
                            <label for="frist_name">CV</label>
                            <input id="frist_name" type="file" class="form-control" name="cv" autofocus required>
                        </div>
                        <div class="form-group ">
                            <label for="frist_name">Surat Rekomendasi</label>
                            <input id="frist_name" type="file" class="form-control" name="surat_rekomendasi" autofocus required>
                        </div>
                        <div class="form-group ">
                            <label for="frist_name">KTP</label>
                            <input id="frist_name" type="file" class="form-control" name="ktp" autofocus required>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-lg btn-block">
                            Pendaftaran
                            </button>
                        </div>
                   </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection