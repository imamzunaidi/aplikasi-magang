<html>
<head>
    <title> Surat Magang </title>
    <style type= "text/css">
            body {
                font-family: arial;
                /* background-color : #ccc  */
            }
            .rangkasurat {
                /* width : 980px;
                margin:0 auto;
                background-color : #fff;
                height: 500px;
                padding: 20px; */
            }
            table {
                border-bottom : 5px solid # 000;
                padding: 2px
            }
            .tengah {
                text-align : center;
                line-height: 5px;
            }


            #judul{
                text-align:center;
            }

            #halaman{
                width: auto;
                height: auto;
                position: absolute;
                /* border: 1px solid;  */
                padding-top: 30px;
                padding-left: 30px;
                padding-right: 30px;
                padding-bottom: 80px;
            }
     </style >
</head>
<body>
<div class = "rangkasurat">
     <table width = "100%">
           <tr>
                 {{-- <td width = "200px"><img src="{{ asset('') }}assets_admin/img/logonew.png" width="100%"></td> --}}
                 <td class="tengah">
                       <h2>PT. Biro Klasifikasi Indonesia (Persero)</h2>
                       <h2>Cabang Klas Utama Samarinda</h2>
                       <h4> JL. MT Haryono No.199 Air Putih, </h4>
                       <h4>Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243</h4>
                 </td>
            </tr>
            <hr>
     </table >

     <div id=halaman>
         <h3 id=judul>SURAT PERNYATAAN</h3>

         <p>Saya yang bertanda tangan di bawah ini :</p>

         <table>
             <tr>
                 <td style="width: 30%;">Nama</td>
                 <td style="width: 5%;">:</td>
                 <td style="width: 65%;">SMD Bisnis PT. Biro Klasifikasi Indonesia</td>
             </tr>
             <tr>
                <td style="width: 30%;">No telp</td>
                <td style="width: 5%;">:</td>
                <td style="width: 65%;">(021) 4301017</td>
            </tr>
             <tr>
                 <td style="width: 30%; vertical-align: top;">Alamat</td>
                 <td style="width: 5%; vertical-align: top;">:</td>
                 <td style="width: 65%;">Jl. MT Haryono No.199 Air Putih, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243 </td>
             </tr>

         </table>
         <p>Dengan ini menyatakan bahwa: :</p>
         <table>
            <tr>
                <td style="width: 30%;">Nama</td>
                <td style="width: 5%;">:</td>
                <td style="width: 65%;">{{$detail_pendaftaran->nama_lengkap}}</td>
            </tr>
            <tr>
                <td style="width: 30%; vertical-align: top;">NIM</td>
                <td style="width: 5%; vertical-align: top;">:</td>
                <td style="width: 65%;">{{$detail_pendaftaran->nim}}</td>
            </tr>
            <tr>
                <td style="width: 30%; vertical-align: top;">Universitas</td>
                <td style="width: 5%; vertical-align: top;">:</td>
                <td style="width: 65%;">{{$detail_pendaftaran->universitas}}</td>
            </tr>
            <tr>
                <td style="width: 30%; vertical-align: top;">Jurusan</td>
                <td style="width: 5%; vertical-align: top;">:</td>
                <td style="width: 65%;">{{$detail_pendaftaran->jurusan}}</td>
            </tr>
            <tr>
                <td style="width: 30%;">Prodi</td>
                <td style="width: 5%;">:</td>
                <td style="width: 65%;">{{$detail_pendaftaran->prodi}}</td>
            </tr>
            <tr>
                <td style="width: 30%;">Jenis Kelamin</td>
                <td style="width: 5%;">:</td>
                <td style="width: 65%;">{{$detail_pendaftaran->jenis_kelamin}}</td>
            </tr>
            <tr>
                <td style="width: 30%; vertical-align: top;">Alamat</td>
                <td style="width: 5%; vertical-align: top;">:</td>
                <td style="width: 65%;">{{$detail_pendaftaran->alamat_lengkap}}</td>
            </tr>
            <tr>
                <td style="width: 30%; vertical-align: top;">Mulai</td>
                <td style="width: 5%; vertical-align: top;">:</td>
                <td style="width: 65%;">{{$detail_pendaftaran->dari_tanggal}}</td>
            </tr>
            <tr>
                <td style="width: 30%; vertical-align: top;">Selesai</td>
                <td style="width: 5%; vertical-align: top;">:</td>
                <td style="width: 65%;">{{$detail_pendaftaran->sampai_tanggal}}</td>
            </tr>


        </table>
         <p align = "justify">Mahasiswa yang bersangkutan telah diterima magang kerja di PT. Biro Klasifikasi Indonesia (Persero) Cabang Klas Utama Samarinda Yang bersangkutan dapat melaksanakan magang kerja selama waktu yang telah ditentukan,
            Selama magang di PT. BKI, yang bersangkutan wajib menaati peraturan yang ada di perusahaan kami.</p>

         {{-- <div style="width: 50%; text-align: left; float: right;">Jakarta, {{date('d-m-Y')}}</div><br> --}}
         <div style="width: 50%; text-align: left; float: right;">Yang bertanda tangan,</div><br><br><br><br><br>
         <div style="width: 50%; text-align: left; float: right;">Senior Manajer Dukungan Bisnis</div>

     </div>
</div>

</body>
</html>
