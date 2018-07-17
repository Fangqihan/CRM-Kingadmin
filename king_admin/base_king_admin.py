class BaseKingAdmin(object):
    list_display = []
    list_filter = []
    search_fields=[]
    readonly_fields=[]
    filter_horizontal =[]
    default_actions = ['delete_selected']
    actions=[]

    def delete_selected(self,request,query_set):
        query_set.delete()




