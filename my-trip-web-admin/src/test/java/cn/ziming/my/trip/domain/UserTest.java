package cn.ziming.my.trip.domain;

import org.junit.Test;

import static org.junit.Assert.*;

public class UserTest {
	@Test
	public void testUser(){
		User user = new User("asd","asd");
		System.out.println(user.getRegDate());
	}

}