from django import conf

def kingadmin_auto_discover():
    """执行当前项目的所有app下kingadmin.py文件代码"""
    for app_name in conf.settings.INSTALLED_APPS:
        try:
            mod = __import__('%s.kingadmin'%app_name)
            # 打印每个app已注册的model名字
            print(mod.kingadmin)
        except ImportError:
            pass



