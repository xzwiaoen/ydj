package weixin.message.resp;
/** 
 * 音乐消息 
 *  
 * @author 你肖哥
 * @date 2015-01-16 
 */  
public class MusicMessage extends BaseMessage {  
    // 音乐  
    private Music Music;  
  
    public Music getMusic() {  
        return Music;  
    }  
  
    public void setMusic(Music music) {  
        Music = music;  
    }  
}