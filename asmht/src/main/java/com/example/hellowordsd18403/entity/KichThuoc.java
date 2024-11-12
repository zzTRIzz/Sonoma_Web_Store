package com.example.hellowordsd18403.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;

import java.util.Collection;
import java.util.Objects;

@Entity
public class KichThuoc {
    private Integer id;
    @NotBlank(message = "không được để trống")
    private String ma;
    @NotBlank(message = "không được để trống")
    private String ten;
    private Boolean trangThai;
    private Collection<SanPhamCt> sanPhamCtsById;

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
    @Column(name = "ma")
    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    @Basic
    @Column(name = "ten")
    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
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
        KichThuoc kichThuoc = (KichThuoc) o;
        return Objects.equals(id, kichThuoc.id) && Objects.equals(ma, kichThuoc.ma) && Objects.equals(ten, kichThuoc.ten) && Objects.equals(trangThai, kichThuoc.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, ma, ten, trangThai);
    }

    @OneToMany(mappedBy = "kichThuocByIdKichThuoc")
    public Collection<SanPhamCt> getSanPhamCtsById() {
        return sanPhamCtsById;
    }

    public void setSanPhamCtsById(Collection<SanPhamCt> sanPhamCtsById) {
        this.sanPhamCtsById = sanPhamCtsById;
    }
}
