//package com.example.hellowordsd18403.service;
//
//import com.example.hellowordsd18403.model.*;
//import java.util.ArrayList;
//import java.util.List;
//
//public class Service {
//    // Danh sách cho các bảng
//    private List<SanPham> sanPhamList = new ArrayList<>();
//    private List<KhachHang> khachHangList = new ArrayList<>();
//    private List<NhanVien> nhanVienList = new ArrayList<>();
//    private List<HoaDon> hoaDonList = new ArrayList<>();
//    private List<MauSac> mauSacList = new ArrayList<>();
//    private List<KichThuoc> kichThuocList = new ArrayList<>();
//    private List<HoaDonChiTiet> hoaDonChiTietList = new ArrayList<>();
//    private List<SPChiTiet> spChiTietList = new ArrayList<>();
//
//    // Khởi tạo dịch vụ
//    public Service() {
//        nhanVienList.add(new NhanVien(1, "nhan vien 1", "NV01", "1", "1", true));
//        nhanVienList.add(new NhanVien(2, "nhan vien 2", "NV02", "2", "2", false));
//
//        //data khách hàng
//        khachHangList.add(new KhachHang(1, "Khach Hang 1", "KH01", "dia chi 1", true));
//        khachHangList.add(new KhachHang(2, "Khach Hang 2", "KH02", "dia chi 2", false));
//        khachHangList.add(new KhachHang(3, "Khach Hang 3", "KH03", "dia chi 3", false));
//    }
//
//    // Phương thức add
//    public void add(Object obj) {
//        if (obj instanceof SanPham) {
//            sanPhamList.add((SanPham) obj);
//        } else if (obj instanceof KhachHang) {
//            khachHangList.add((KhachHang) obj);
//        } else if (obj instanceof NhanVien) {
//            nhanVienList.add((NhanVien) obj);
//        } else if (obj instanceof HoaDon) {
//            hoaDonList.add((HoaDon) obj);
//        } else if (obj instanceof MauSac) {
//            mauSacList.add((MauSac) obj);
//        } else if (obj instanceof KichThuoc) {
//            kichThuocList.add((KichThuoc) obj);
//        } else if (obj instanceof HoaDonChiTiet) {
//            hoaDonChiTietList.add((HoaDonChiTiet) obj);
//        } else if (obj instanceof SPChiTiet) {
//            spChiTietList.add((SPChiTiet) obj);
//        } else {
//            throw new IllegalArgumentException("not supported object: " + obj.getClass().getName());
//        }
//    }
//
//    // Phương thức getById
//    public SanPham getByIdSanPham(int id) {
//        for (SanPham sp : sanPhamList) {
//            if (sp.getId() == id) {
//                return sp;
//            }
//        }
//        return null;
//    }
//
//    public KhachHang getByIdKhachHang(int id) {
//        for (KhachHang kh : khachHangList) {
//            if (kh.getId() == id) {
//                return kh;
//            }
//        }
//        return null;
//    }
//
//    public NhanVien getByIdNhanVien(int id) {
//        for (NhanVien nv : nhanVienList) {
//            if (nv.getId() == id) {
//                return nv;
//            }
//        }
//        return null;
//    }
//
//    public HoaDon getByIdHoaDon(int id) {
//        for (HoaDon hd : hoaDonList) {
//            if (hd.getId() == id) {
//                return hd;
//            }
//        }
//        return null;
//    }
//
//    public MauSac getByIdMauSac(int id) {
//        for (MauSac ms : mauSacList) {
//            if (ms.getId() == id) {
//                return ms;
//            }
//        }
//        return null;
//    }
//
//    public KichThuoc getByIdKichThuoc(int id) {
//        for (KichThuoc kt : kichThuocList) {
//            if (kt.getId() == id) {
//                return kt;
//            }
//        }
//        return null;
//    }
//
//    public HoaDonChiTiet getByIdHoaDonChiTiet(int id) {
//        for (HoaDonChiTiet hdct : hoaDonChiTietList) {
//            if (hdct.getId() == id) {
//                return hdct;
//            }
//        }
//        return null;
//    }
//
//    public SPChiTiet getByIdSpChiTiet(int id) {
//        for (SPChiTiet spct : spChiTietList) {
//            if (spct.getId() == id) {
//                return spct;
//            }
//        }
//        return null;
//    }
//
//    // Phương thức delete
//    public void deleteSanPham(int id) {
//        SanPham obj = getByIdSanPham(id);
//        if (obj != null) {
//            sanPhamList.remove(obj);
//        }
//    }
//
//    public void deleteKhachHang(int id) {
//        KhachHang obj = getByIdKhachHang(id);
//        if (obj != null) {
//            khachHangList.remove(obj);
//        }
//    }
//
//    public void deleteNhanVien(int id) {
//        NhanVien obj = getByIdNhanVien(id);
//        if (obj != null) {
//            nhanVienList.remove(obj);
//        }
//    }
//
//    public void deleteHoaDon(int id) {
//        HoaDon obj = getByIdHoaDon(id);
//        if (obj != null) {
//            hoaDonList.remove(obj);
//        }
//    }
//
//    public void deleteMauSac(int id) {
//        MauSac obj = getByIdMauSac(id);
//        if (obj != null) {
//            mauSacList.remove(obj);
//        }
//    }
//
//    public void deleteKichThuoc(int id) {
//        KichThuoc obj = getByIdKichThuoc(id);
//        if (obj != null) {
//            kichThuocList.remove(obj);
//        }
//    }
//
//    public void deleteHoaDonChiTiet(int id) {
//        HoaDonChiTiet obj = getByIdHoaDonChiTiet(id);
//        if (obj != null) {
//            hoaDonChiTietList.remove(obj);
//        }
//    }
//
//    public void deleteSpChiTiet(int id) {
//        SPChiTiet obj = getByIdSpChiTiet(id);
//        if (obj != null) {
//            spChiTietList.remove(obj);
//        }
//    }
//
//    // Phương thức update
//    public void updateSanPham(SanPham sp) {
//        for (int i = 0; i < sanPhamList.size(); i++) {
//            if (sanPhamList.get(i).getId() == sp.getId()) {
//                sanPhamList.set(i, sp);
//                return;
//            }
//        }
//    }
//
//    public void updateKhachHang(KhachHang kh) {
//        for (int i = 0; i < khachHangList.size(); i++) {
//            if (khachHangList.get(i).getId() == kh.getId()) {
//                khachHangList.set(i, kh);
//                return;
//            }
//        }
//    }
//
//    public void updateNhanVien(NhanVien nv) {
//        for (int i = 0; i < nhanVienList.size(); i++) {
//            if (nhanVienList.get(i).getId() == nv.getId()) {
//                nhanVienList.set(i, nv);
//                return;
//            }
//        }
//    }
//
//    public void updateHoaDon(HoaDon hd) {
//        for (int i = 0; i < hoaDonList.size(); i++) {
//            if (hoaDonList.get(i).getId() == hd.getId()) {
//                hoaDonList.set(i, hd);
//                return;
//            }
//        }
//    }
//
//    public void updateMauSac(MauSac ms) {
//        for (int i = 0; i < mauSacList.size(); i++) {
//            if (mauSacList.get(i).getId() == ms.getId()) {
//                mauSacList.set(i, ms);
//                return;
//            }
//        }
//    }
//
//    public void updateKichThuoc(KichThuoc kt) {
//        for (int i = 0; i < kichThuocList.size(); i++) {
//            if (kichThuocList.get(i).getId() == kt.getId()) {
//                kichThuocList.set(i, kt);
//                return;
//            }
//        }
//    }
//
//    public void updateHoaDonChiTiet(HoaDonChiTiet hdct) {
//        for (int i = 0; i < hoaDonChiTietList.size(); i++) {
//            if (hoaDonChiTietList.get(i).getId() == hdct.getId()) {
//                hoaDonChiTietList.set(i, hdct);
//                return;
//            }
//        }
//    }
//
//    public void updateSpChiTiet(SPChiTiet spct) {
//        for (int i = 0; i < spChiTietList.size(); i++) {
//            if (spChiTietList.get(i).getId() == spct.getId()) {
//                spChiTietList.set(i, spct);
//                return;
//            }
//        }
//    }
//
//    // Lấy danh sách cho từng bảng
//    public List<NhanVien> getNhanVienList() {
//        return nhanVienList;
//    }
//
//    public List<SanPham> getSanPhamList() {
//        return sanPhamList;
//    }
//
//    public List<KhachHang> getKhachHangList() {
//        return khachHangList;
//    }
//
//    public List<HoaDon> getHoaDonList() {
//        return hoaDonList;
//    }
//
//    public List<MauSac> getMauSacList() {
//        return mauSacList;
//    }
//
//    public List<KichThuoc> getKichThuocList() {
//        return kichThuocList;
//    }
//
//    public List<HoaDonChiTiet> getHoaDonChiTietList() {
//        return hoaDonChiTietList;
//    }
//
//    public List<SPChiTiet> getSpChiTietList() {
//        return spChiTietList;
//    }
//
//
//    //------------------------------------------------------
//    //Phân trang , search : kh
//    public List<KhachHang> searchKhachHang(String keyword) {
//        List<KhachHang> result = new ArrayList<>();
//        for (KhachHang kh : khachHangList) {
//            if (kh.getTen().toLowerCase().contains(keyword.toLowerCase()) ||
//                    kh.getMaKM().toLowerCase().contains(keyword.toLowerCase())) {
//                result.add(kh);
//            }
//        }
//        return result;
//    }
//
//    public List<KhachHang> getKhachHangByPage(int page, int size) {
//        List<KhachHang> result = new ArrayList<>();
//
//        int startIndex = page * size;
//        int endIndex = startIndex + size;
//
//        if (startIndex >= khachHangList.size()) {
//            return result;
//        }
//
//        if (endIndex > khachHangList.size()) {
//            endIndex = khachHangList.size();
//        }
//
//        for (int i = startIndex; i < endIndex; i++) {
//            result.add(khachHangList.get(i));
//        }
//
//        return result;
//    }
//
//    public int getTotalPages(int size) {
//        return (khachHangList.size() + size - 1) / size;
//    }
//
//
//
//
//    //------------------------------------------------------
//    //Phân trang , search : nhân
//    public List<NhanVien> searchNhanVien(String keyword) {
//        List<NhanVien> result = new ArrayList<>();
//        for (NhanVien kh : nhanVienList) {
//            if (kh.getTen().toLowerCase().contains(keyword.toLowerCase()) ||
//                    kh.getMaNV().toLowerCase().contains(keyword.toLowerCase())) {
//                result.add(kh);
//            }
//        }
//        return result;
//    }
//
//    public List<NhanVien> getNhanVienByPage(int page, int size) {
//        List<NhanVien> result = new ArrayList<>();
//
//        int startIndex = page * size;
//        int endIndex = startIndex + size;
//
//        if (startIndex >= nhanVienList.size()) {
//            return result;
//        }
//
//        if (endIndex > nhanVienList.size()) {
//            endIndex = nhanVienList.size();
//        }
//
//        for (int i = startIndex; i < endIndex; i++) {
//            result.add(nhanVienList.get(i));
//        }
//
//        return result;
//    }
//
//    public int getTotalPagesNhanVien(int size) {
//        return (nhanVienList.size() + size - 1) / size;
//    }
//
//
////------------------------------------------------------
//    //Phân trang , search : nhân
//    public List<SanPham> searchSanPham(String keyword) {
//        List<SanPham> result = new ArrayList<>();
//        for (SanPham kh : sanPhamList) {
//            if (kh.getTen().toLowerCase().contains(keyword.toLowerCase()) ||
//                    kh.getMa().toLowerCase().contains(keyword.toLowerCase())) {
//                result.add(kh);
//            }
//        }
//        return result;
//    }
//
//    public List<SanPham> getSanPhamByPage(int page, int size) {
//        List<SanPham> result = new ArrayList<>();
//
//        int startIndex = page * size;
//        int endIndex = startIndex + size;
//
//        if (startIndex >= sanPhamList.size()) {
//            return result;
//        }
//
//        if (endIndex > sanPhamList.size()) {
//            endIndex = sanPhamList.size();
//        }
//
//        for (int i = startIndex; i < endIndex; i++) {
//            result.add(sanPhamList.get(i));
//        }
//
//        return result;
//    }
//
//    public int getTotalPageSanPham(int size) {
//        return (sanPhamList.size() + size - 1) / size;
//    }
//
//
//
//
//
//
//
//}
