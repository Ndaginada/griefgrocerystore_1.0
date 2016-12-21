package cn.edu.neusoft.meal.service.impl;

import cn.edu.neusoft.meal.domain.Reply;
import cn.edu.neusoft.meal.mapper.ReplyDao;
import cn.edu.neusoft.meal.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ReplyServiceImpl implements ReplyService {

    @Autowired
    ReplyDao dao;

    @Override
    public boolean addReply(Reply reply) {
        int next=dao.getId()+1;
        reply.setId(next);
        return dao.addReply(reply);
    }

    @Override
    public List<Reply> getReplyByLetter(int l_id) {
        return dao.getReplyByLetter(l_id);
    }

    @Override
    public List<Reply> getReplyByUser(int u_id) {
        return dao.getReplyByUser(u_id);
    }

    @Override
    public List<Reply> getReplyByBelongUser(int u_id) {
        return dao.getReplyByBelongUser(u_id);
    }

    @Override
    public List<Reply> getAllReply() {
        return dao.getAllReply();
    }

    @Override
    public boolean delReply(int id) {
        if (dao.delReply(id)){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public long getPage(String a_ln) {
        if(a_ln==null){
            a_ln="%%";
        }else{
            a_ln="%"+a_ln+"%";
        }
        long replyCount=dao.getReplyCount(a_ln);
        if(replyCount%10==0){
            return replyCount/10;
        }else{
            return replyCount/10+1;
        }
    }

    @Override
    public List<Reply> getFindReply(String a_ln, int page_no) {
        if(a_ln==null){
            a_ln="%%";
        }else{
            a_ln="%"+a_ln+"%";
        }
        page_no=page_no*10;
        return dao.getFindReply(a_ln,page_no);
    }

}
