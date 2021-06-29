package com.fpjt.upmu.address.model.dao;

import java.util.List;

import com.fpjt.upmu.address.model.vo.Address;
import com.fpjt.upmu.address.model.vo.AddressExt;

public interface AddressDao {

	int insertAddr(Address address);

	List<AddressExt> selectAddrList(int byEmp);

	int deleteAddr(Address address);

	Address selectOneAddr(Address address);

}
