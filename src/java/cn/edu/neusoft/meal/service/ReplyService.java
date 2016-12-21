package cn.edu.neusoft.meal.service;

import cn.edu.neusoft.meal.domain.Reply;

import java.util.List;

public interface ReplyService {


    boolean addReply(Reply reply);

    List<Reply> getReplyByLetter(int l_id);

    List<Reply> getReplyByUser(int u_id);

    List<Reply> getReplyByBelongUser(int u_id);

    List<Reply> getAllReply();

    boolean delReply(int id);

    long getPage(String a_ln);

    List<Reply> getFindReply(String a_ln, int page_no);
}
