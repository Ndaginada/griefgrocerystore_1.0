<%@tag pageEncoding="utf-8" %>
<%@attribute name="url" type="java.lang.String" required="true" %>
<%@attribute name="keyword" type="java.lang.String" required="true" %>
<script>
    function jumptopage(page){
        var keyword=$('#${keyword}').val();
        location.href="${url}?${keyword}="+keyword+"&pageno="+page;
        return false;
    }
</script>