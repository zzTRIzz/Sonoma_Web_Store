package com.example.hellowordsd18403.respository;

import com.example.hellowordsd18403.entity.HoaDon;
import com.example.hellowordsd18403.entity.HoaDonChiTiet;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface HoaDonChiTietRepo extends JpaRepository<HoaDonChiTiet, Integer> {
    @Query("SELECT ms FROM HoaDonChiTiet ms WHERE ms.sanPhamCtByIdSpct.id = :search OR ms.hoaDonByIdHoaDon.id = :search")
    Page<HoaDonChiTiet> searchByNameOrId(@Param("search") String search, Pageable pageable);
}
