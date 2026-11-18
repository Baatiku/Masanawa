.class public Lcom/opay/face/common/FaceSoCheckManager;
.super Ljava/lang/Object;
.source "FaceSoCheckManager.java"

# interfaces
.implements Lcom/opay/face/common/IFaceSoCheck;


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lcom/opay/face/common/IFaceSoCheck;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final EVENT_CLOSE_CLICK:Ljava/lang/String; = "page_camera_instructions_soerror_popup_close_click"

.field private static final EVENT_DIALOG_SHOW:Ljava/lang/String; = "page_camera_instructions_soerror_popup_show"

.field private static final EVENT_UPGRADE_CLICK:Ljava/lang/String; = "page_camera_instructions_soerror_popup_upgrade_click"

.field private static final KEY_CHECK_SO_DATE:Ljava/lang/String; = "oface_so_check_date"

.field private static final SP_CHECK_SO_NAME:Ljava/lang/String; = "oface_so_check"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/opay/face/common/FaceSoCheckManager;Ljava/lang/String;Lcom/opay/face/common/NextCallback;Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/opay/face/common/FaceSoCheckManager;->lambda$showUpgradeDialog$1(Ljava/lang/String;Lcom/opay/face/common/NextCallback;Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/opay/face/common/FaceSoCheckManager;Ljava/lang/String;Lcom/opay/face/common/NextCallback;Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/opay/face/common/FaceSoCheckManager;->lambda$showUpgradeDialog$0(Ljava/lang/String;Lcom/opay/face/common/NextCallback;Landroidx/fragment/app/DialogFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getSoCheckDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "oface_so_check"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "oface_so_check_date"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private getSoCheckForVersion(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/opay/face/util/APKVersionInfoUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "oface_so_check"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private synthetic lambda$showUpgradeDialog$0(Ljava/lang/String;Lcom/opay/face/common/NextCallback;Landroidx/fragment/app/DialogFragment;)V
    .locals 1

    .line 1
    const-string v0, "page_camera_instructions_soerror_popup_close_click"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/opay/face/common/util/TraceUtils;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p2, p1}, Lcom/opay/face/common/FaceSoCheckManager;->nextCallback(Lcom/opay/face/common/NextCallback;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private synthetic lambda$showUpgradeDialog$1(Ljava/lang/String;Lcom/opay/face/common/NextCallback;Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Landroidx/fragment/app/DialogFragment;)V
    .locals 1

    .line 1
    const-string v0, "page_camera_instructions_soerror_popup_upgrade_click"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/opay/face/common/util/TraceUtils;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p2, p1}, Lcom/opay/face/common/FaceSoCheckManager;->nextCallback(Lcom/opay/face/common/NextCallback;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 11
    .line 12
    .line 13
    new-instance p1, Landroid/content/Intent;

    .line 14
    .line 15
    const-string p2, "android.intent.action.VIEW"

    .line 16
    .line 17
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 22
    .line 23
    .line 24
    const-string p2, "android.intent.category.BROWSABLE"

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const/high16 p2, 0x10000000

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    invoke-virtual {p4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    :cond_0
    return-void
.end method

.method private nextCallback(Lcom/opay/face/common/NextCallback;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1, p2}, Lcom/opay/face/common/NextCallback;->onNext(Z)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private saveSoCheckDate(Landroid/content/Context;Ljava/util/Date;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd"

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string v0, "oface_so_check"

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "oface_so_check_date"

    .line 28
    .line 29
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private saveSoCheckForVersion(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/opay/face/util/APKVersionInfoUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "oface_so_check"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private showUpgradeDialog(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/NextCallback;)V
    .locals 8

    .line 1
    const-string v0, "page_camera_instructions_soerror_popup_show"

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/opay/face/common/util/TraceUtils;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/opay/face/common/FaceSoCheckManager;->saveSoCheckForVersion(Landroid/content/Context;Z)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/opay/face/common/view/dialog/UpgradeDialog;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/opay/face/common/view/dialog/UpgradeDialog;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lku5;

    .line 19
    .line 20
    invoke-direct {v0, p0, p2, p4}, Lku5;-><init>(Lcom/opay/face/common/FaceSoCheckManager;Ljava/lang/String;Lcom/opay/face/common/NextCallback;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/opay/face/common/view/dialog/UpgradeDialog;->G(Lcom/opay/face/common/view/dialog/UpgradeDialog$a;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Llu5;

    .line 27
    .line 28
    move-object v2, v0

    .line 29
    move-object v3, p0

    .line 30
    move-object v4, p2

    .line 31
    move-object v5, p4

    .line 32
    move-object v6, p3

    .line 33
    move-object v7, p1

    .line 34
    invoke-direct/range {v2 .. v7}, Llu5;-><init>(Lcom/opay/face/common/FaceSoCheckManager;Ljava/lang/String;Lcom/opay/face/common/NextCallback;Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/opay/face/common/view/dialog/UpgradeDialog;->H(Lcom/opay/face/common/view/dialog/UpgradeDialog$b;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "upgrade_dialog"

    .line 45
    .line 46
    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public checkFaceSo(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/NextCallback;)V
    .locals 2

    .line 1
    const-string v0, "startuppage"

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/opay/face/common/FaceSoCheckManager;->isToday(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, p4, v1}, Lcom/opay/face/common/FaceSoCheckManager;->nextCallback(Lcom/opay/face/common/NextCallback;Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lcom/opay/face/common/FaceSoCheckManager;->getSoCheckForVersion(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, p4, v1}, Lcom/opay/face/common/FaceSoCheckManager;->nextCallback(Lcom/opay/face/common/NextCallback;Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v0, Ljava/util/Date;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1, v0}, Lcom/opay/face/common/FaceSoCheckManager;->saveSoCheckDate(Landroid/content/Context;Ljava/util/Date;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/opay/face/OFaceAlg;->getInstance()Lcom/opay/face/OFaceAlg;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Lcom/opay/face/OFaceAlg;->load(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-direct {p0, p1, v1}, Lcom/opay/face/common/FaceSoCheckManager;->saveSoCheckForVersion(Landroid/content/Context;Z)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p4, v1}, Lcom/opay/face/common/FaceSoCheckManager;->nextCallback(Lcom/opay/face/common/NextCallback;Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/opay/face/common/FaceSoCheckManager;->showUpgradeDialog(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/NextCallback;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public isToday(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/FaceSoCheckManager;->getSoCheckDate(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    const-string v1, "yyyy-MM-dd"

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/util/Date;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method
