<%@tag pageEncoding="UTF-8" %>
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">删除确认</h4>
        </div>
        <div class="modal-body">
            <h4 class="text-danger">确定要删除该信件吗？</h4>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">放弃</button>
            <button type="button" onclick="delSubmit()" class="btn btn-primary" data-dismiss="modal">删除</button>
        </div>
    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->