package com.example.hellowordsd18403.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;

import java.util.Collection;
import java.util.Objects;

@Entity
public class SanPhamCt {
    private Integer id;
    @NotBlank(message = "không được để trống")
    private String maSpct;
    @NotBlank(message = "không được để trống")
    private String hinhAnh;
    private Integer soLuong;
    private Double gia;
    private Boolean trangThai;
    private Collection<HoaDonChiTiet> hoaDonChiTietsById;
    private SanPham sanPhamByIdSanPham;
    private MauSac mauSacByIdMauSac;
    private KichThuoc kichThuocByIdKichThuoc;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "maSPCT")
    public String getMaSpct() {
        return maSpct;
    }

    public void setMaSpct(String maSpct) {
        this.maSpct = maSpct;
    }

    @Basic
    @Column(name = "hinhAnh")
    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    @Basic
    @Column(name = "soLuong")
    public Integer getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    @Basic
    @Column(name = "gia")
    public Double getGia() {
        return gia;
    }

    public void setGia(Double gia) {
        this.gia = gia;
    }

    @Basic
    @Column(name = "trangThai")
    public Boolean getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(Boolean trangThai) {
        this.trangThai = trangThai;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SanPhamCt sanPhamCt = (SanPhamCt) o;
        return Objects.equals(id, sanPhamCt.id) && Objects.equals(maSpct, sanPhamCt.maSpct) && Objects.equals(hinhAnh, sanPhamCt.hinhAnh) && Objects.equals(soLuong, sanPhamCt.soLuong) && Objects.equals(gia, sanPhamCt.gia) && Objects.equals(trangThai, sanPhamCt.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, maSpct, hinhAnh, soLuong, gia, trangThai);
    }

    @OneToMany(mappedBy = "sanPhamCtByIdSpct")
    public Collection<HoaDonChiTiet> getHoaDonChiTietsById() {
        return hoaDonChiTietsById;
    }

    public void setHoaDonChiTietsById(Collection<HoaDonChiTiet> hoaDonChiTietsById) {
        this.hoaDonChiTietsById = hoaDonChiTietsById;
    }

    @ManyToOne
    @JoinColumn(name = "idSanPham", referencedColumnName = "id")
    public SanPham getSanPhamByIdSanPham() {
        return sanPhamByIdSanPham;
    }

    public void setSanPhamByIdSanPham(SanPham sanPhamByIdSanPham) {
        this.sanPhamByIdSanPham = sanPhamByIdSanPham;
    }

    @ManyToOne
    @JoinColumn(name = "idMauSac", referencedColumnName = "id")
    public MauSac getMauSacByIdMauSac() {
        return mauSacByIdMauSac;
    }

    public void setMauSacByIdMauSac(MauSac mauSacByIdMauSac) {
        this.mauSacByIdMauSac = mauSacByIdMauSac;
    }

    @ManyToOne
    @JoinColumn(name = "idKichThuoc", referencedColumnName = "id")
    public KichThuoc getKichThuocByIdKichThuoc() {
        return kichThuocByIdKichThuoc;
    }

    public void setKichThuocByIdKichThuoc(KichThuoc kichThuocByIdKichThuoc) {
        this.kichThuocByIdKichThuoc = kichThuocByIdKichThuoc;
    }
}
