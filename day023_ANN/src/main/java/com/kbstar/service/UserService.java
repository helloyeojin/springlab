package com.kbstar.service;

import com.kbstar.dao.UserDAO;
import com.kbstar.dto.UserDTO;
import com.kbstar.frame.MyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("uservice")
public class UserService implements MyService<String, UserDTO> {

    @Autowired
    UserDAO dao;
//    위에처럼 해서 자동적으로 컴포넌트를 스캔하게 만드는 방법도 쓸 수 있음(유연성은 떨어짐) 아래처럼 해도 됨
//    @Qualifier("udao")
//    MyDao<String, UserDTO> dao;
//  데이터 액세스 오브젝트(인터페이스) - 혹시 sql이나 db가 바뀌었을 때 여기는 건드리지 않아도 되게끔(그거는 DAO만 수정하면 되게 여기에서의 기능 정의를 해야함)


    @Override
    public void register(UserDTO userDTO) {
        dao.insert(userDTO);
        System.out.println("Send Mail");
    }

    @Override
    public void remove(String s) {
        dao.delete(s);
    }

    @Override
    public void modify(UserDTO userDTO) {
        dao.update(userDTO);
        System.out.println("Send Mail");
    }

    @Override
    public UserDTO get(String s) {
        // 로그인 기능
        return dao.select(s);
    }

    @Override
    public List<UserDTO> get() {
        return dao.select();
    }
}
