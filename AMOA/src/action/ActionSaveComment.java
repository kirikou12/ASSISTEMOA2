package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Comment;
import metier.Discussion;
import metier.User;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import action.form.BeanFormComment;
import dao.DAOComment;
import dao.DAODiscussion;
import dao.hibernate.DAOCommentHBM;
import dao.hibernate.DAODiscussionHBM;

public class ActionSaveComment extends Action {

	private DAOComment daoComment = DAOCommentHBM.getInstance();
	private DAODiscussion daoDiscussion = DAODiscussionHBM.getInstance();
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		BeanFormComment beanComment = (BeanFormComment)form;
		
		User user = (User)request.getSession().getAttribute("membre");
		Discussion discussion = daoDiscussion.get(beanComment.getDiscussionId());
		
		Comment comment = new Comment();
		comment.setContent(beanComment.getComment());
		comment.setAuthor(user);
		comment.setDiscussion(discussion);
		daoComment.save(comment);		
		
		
		PrintWriter out = response.getWriter();
		out.println(beanComment.getComment() );
		
		return null;
	}

}
