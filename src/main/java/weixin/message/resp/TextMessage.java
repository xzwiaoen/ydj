package weixin.message.resp;
/** 
 * 文本消息 
 *  
 * @author 你肖哥
 * @date 2015-01-16 
 */  
public class TextMessage extends BaseMessage {  
    // 回复的消息内容  
    private String Content;  
  
    public String getContent() {  
        return Content;  
    }  
  
    public void setContent(String content) {  
        Content = content;  
    }  
}  