package weixin.message.req;

/** 
 * 图片消息 
 *  
 * @author 你肖哥
 * @date 2015-01-16 
 */  
public class ImageMessage extends BaseMessage {  
    // 图片链接  
    private String PicUrl;  
  
    public String getPicUrl() {  
        return PicUrl;  
    }  
  
    public void setPicUrl(String picUrl) {  
        PicUrl = picUrl;  
    }  
}  