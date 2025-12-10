@if (auth()->user()->role == 'admin')
    <li class="nav-item has-treeview">
        <a href="#" class="nav-link">
            <i class="nav-icon fas fa-copy"></i>
            <p>
                Master
                <i class="fas fa-angle-left right"></i>
            </p>
        </a>
        <ul class="nav nav-treeview">

            <li class="nav-item">
                <a href="{{ url('/user') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>User</p>
                </a>
            </li>



            <li class="nav-item">
                <a href="{{ url('/alasanresign') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Alasan Resign</p>
                </a>
            </li>

            <li class="nav-item">
                <a href="{{ url('/keperluansurat') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Keperluan Surat</p>
                </a>
            </li>

            <li class="nav-item">
                <a href="{{ url('/jabatan') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Jabatan</p>
                </a>
            </li>

            <li class="nav-item">
                <a href="{{ url('/namabank') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Nama Bank</p>
                </a>
            </li>



        </ul>
    </li>

    <li class="nav-item has-treeview">
        <a href="#" class="nav-link">
            <i class="nav-icon fas fa-copy"></i>
            <p>
                Transaksi
                <i class="fas fa-angle-left right"></i>
            </p>
        </a>


        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{{ url('/pengalamankerja') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Surat Pengalaman Bekerja</p>
                </a>
            </li>
        </ul>


        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{{ url('/keteranganbekerja') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Surat Keterangan Bekerja</p>
                </a>
            </li>
        </ul>

        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{{ url('/rekomendasi') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Rekomendasi Pinjaman BPR ABS</p>
                </a>
            </li>
        </ul>

        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{{ url('/kpr') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Surat Keterangan KPR</p>
                </a>
            </li>
        </ul>

    </li>
    
@endif

@if (auth()->user()->role == 'user')
@endif
