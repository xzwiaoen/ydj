package weixin.main;

import com.gson.WeChat;

public class WechatManager {
	public void test(){
		
	}
	public static void main(String[] args) {
		 // 第三方用户唯一凭证  
        String appid = "wx125a2403d154c73f";  
        // 第三方用户唯一凭证密钥  
        String secret = "755d95ee08dc6359b0e4ba2d1bdf0ac0"; 
		try {
			String a=WeChat.getAccessToken(appid, secret);
			System.out.println(a);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
