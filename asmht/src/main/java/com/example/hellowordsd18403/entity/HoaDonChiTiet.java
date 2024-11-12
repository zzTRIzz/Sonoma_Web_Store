package com.example.hellowordsd18403.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;

import java.util.Objects;

@Entity
public class HoaDonChiTiet {
    private Integer id;
    private Integer soLuong;
    private Double gia;
    private Boolean trangThai;
    private SanPhamCt sanPhamCtByIdSpct;
    private HoaDon hoaDonByIdHoaDon;

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
        HoaDonChiTiet that = (HoaDonChiTiet) o;
        return Objects.equals(id, that.id) && Objects.equals(soLuong, that.soLuong) && Objects.equals(gia, that.gia) && Objects.equals(trangThai, that.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, soLuong, gia, trangThai);
    }

    @ManyToOne
    @JoinColumn(name = "idSPCT", referencedColumnName = "id")
    public SanPhamCt getSanPhamCtByIdSpct() {
        return sanPhamCtByIdSpct;
    }

    public void setSanPhamCtByIdSpct(SanPhamCt sanPhamCtByIdSpct) {
        this.sanPhamCtByIdSpct = sanPhamCtByIdSpct;
    }

    @ManyToOne
    @JoinColumn(name = "idHoaDon", referencedColumnName = "id")
    public HoaDon getHoaDonByIdHoaDon() {
        return hoaDonByIdHoaDon;
    }

    public void setHoaDonByIdHoaDon(HoaDon hoaDonByIdHoaDon) {
        this.hoaDonByIdHoaDon = hoaDonByIdHoaDon;
    }
}
