package com.example.hellowordsd18403.respository;

import com.example.hellowordsd18403.entity.NhanVien;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NhanVienRepo extends JpaRepository<NhanVien,Integer> {
    @Query("SELECT nv FROM NhanVien nv WHERE nv.maNv LIKE %:search% OR nv.ten LIKE %:search%")
    Page<NhanVien> searchByNameOrId(@Param("search") String search, Pageable pageable);
}
