package org.gidal.gidalv2.user.domain;


import lombok.*;

@Setter @Getter
@Builder @AllArgsConstructor @NoArgsConstructor
public class UserVO {

    private long id;
    private String user_email; //이메일
    private String user_password; //비밀번호
    private String user_name; //이름
    private String user_gender; //성별
    private String user_phoneNum; //핸드폰번호
    private String enterprise_yn ; //기업인지 아닌지
    private String admin_yn; //관리자 확인


}
