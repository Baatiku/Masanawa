.class public abstract Lcom/opay/face/common/fragment/BaseLiveFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseLiveFragment.java"

# interfaces
.implements Lpt1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/face/common/fragment/BaseLiveFragment$b;,
        Lcom/opay/face/common/fragment/BaseLiveFragment$a;
    }
.end annotation


# static fields
.field public static final H:Ljava/lang/String; = "BaseLiveFragment"

.field public static final I:Ljava/lang/String;


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:I

.field public E:Landroidx/fragment/app/FragmentActivity;

.field public F:Landroid/content/Context;

.field public G:Z

.field public final a:[Ljava/lang/String;

.field public final b:I

.field public c:Lcom/opay/face/common/fragment/BaseLiveFragment$a;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Lcom/opay/face/common/view/CameraNewPreviewLayout;

.field public l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Lcom/opay/face/common/config/OAppConfig;

.field public r:Z

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Landroid/media/AudioManager;

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.opay.face."

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-class v1, Lcom/opay/face/common/fragment/BaseLiveFragment;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ".app_config"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/opay/face/common/fragment/BaseLiveFragment;->I:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.permission.CAMERA"

    .line 5
    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->a:[Ljava/lang/String;

    .line 11
    .line 12
    const/16 v0, 0x88

    .line 13
    .line 14
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->b:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->g:I

    .line 18
    .line 19
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->h:I

    .line 20
    .line 21
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->i:I

    .line 22
    .line 23
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->j:I

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->r:Z

    .line 27
    .line 28
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->s:I

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->B:I

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic A(Lcom/opay/face/common/fragment/BaseLiveFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/BaseLiveFragment;->N(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic N(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "User is not authorized..."

    .line 7
    .line 8
    invoke-static {p1, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->O(Z)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "User has permission..."

    .line 18
    .line 19
    invoke-static {p1, v1}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->s:I

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/opay/face/common/fragment/BaseLiveFragment;->O(Z)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private Q([Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v4, v3}, Lzq2;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x1

    .line 28
    return p1
.end method

.method private R([Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    return p1
.end method


# virtual methods
.method public B()V
    .locals 0

    .line 1
    return-void
.end method

.method public C()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "window"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/view/WindowManager;

    .line 17
    .line 18
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    .line 24
    .line 25
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 26
    .line 27
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->J()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    if-eq v2, v3, :cond_0

    .line 37
    .line 38
    const/4 v3, 0x2

    .line 39
    if-eq v2, v3, :cond_1

    .line 40
    .line 41
    const/4 v3, 0x3

    .line 42
    if-eq v2, v3, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iput v2, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->g:I

    .line 50
    .line 51
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->h:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iput v2, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->g:I

    .line 63
    .line 64
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->h:I

    .line 69
    .line 70
    :goto_0
    iget v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->g:I

    .line 71
    .line 72
    iget v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->h:I

    .line 73
    .line 74
    if-le v0, v1, :cond_2

    .line 75
    .line 76
    iput v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->i:I

    .line 77
    .line 78
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->j:I

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->i:I

    .line 82
    .line 83
    iput v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->j:I

    .line 84
    .line 85
    :goto_1
    return-void
.end method

.method public D()V
    .locals 1

    .line 1
    new-instance v0, Los0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Los0;-><init>(Lcom/opay/face/common/fragment/BaseLiveFragment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->P(Lcom/opay/face/common/fragment/BaseLiveFragment$a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public E(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public F()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget v2, Lcom/opay/face/R$color;->live_white:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v0, v1}, Lcom/opay/face/common/util/ScreenTools;->d(Landroid/app/Activity;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->i()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    sget-object v1, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v1, v0}, Lcom/opay/face/util/Logs;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public G(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/opay/face/R$string;->text_unknown:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x44c

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const-string p1, "Unknown error!"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_0
    sget p1, Lcom/opay/face/R$string;->text_timeout_error_no_face:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :pswitch_1
    sget p1, Lcom/opay/face/R$string;->text_timeout_error_no_action:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :pswitch_2
    sget p1, Lcom/opay/face/R$string;->text_live_error_over_action:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :pswitch_3
    sget p1, Lcom/opay/face/R$string;->text_live_error:I

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :pswitch_4
    sget p1, Lcom/opay/face/R$string;->text_live_cancel:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    :pswitch_5
    sget p1, Lcom/opay/face/R$string;->text_no_permission:I

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_0

    .line 58
    :pswitch_6
    sget p1, Lcom/opay/face/R$string;->text_live_error_do_other_action:I

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_0

    .line 65
    :pswitch_7
    sget p1, Lcom/opay/face/R$string;->text_storage_not_available:I

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_0

    .line 72
    :pswitch_8
    sget p1, Lcom/opay/face/R$string;->text_internal_error:I

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_0

    .line 79
    :pswitch_9
    sget p1, Lcom/opay/face/R$string;->text_link_error:I

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_0

    .line 86
    :pswitch_a
    sget p1, Lcom/opay/face/R$string;->text_unable_to_open_camera:I

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    const-string p1, "Use another verification method."

    .line 94
    .line 95
    :goto_0
    return-object p1

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch -0x3f3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public H()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isDetectFarNear()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->C:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isDetectFlash()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    return v0

    .line 28
    :cond_2
    return v1

    .line 29
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 30
    return v0
.end method

.method public abstract I()I
.end method

.method public J()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public K()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "audio"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/media/AudioManager;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->x:Landroid/media/AudioManager;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->y:I

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->X()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Lcom/opay/face/common/fragment/BaseLiveFragment;->I:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    instance-of v1, v0, Lcom/opay/face/common/config/OAppConfig;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    check-cast v0, Lcom/opay/face/common/config/OAppConfig;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/opay/face/common/config/OAppConfig;->getBusiness()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->m:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/opay/face/common/config/OAppConfig;->getToken()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->n:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/opay/face/common/config/OAppConfig;->getTraceId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->o:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/opay/face/common/config/OAppConfig;->getExtraMap()Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    const-string v1, "valChainId"

    .line 84
    .line 85
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-nez v2, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ljava/lang/String;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    :goto_0
    const-string v0, ""

    .line 100
    .line 101
    :goto_1
    iput-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->p:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->m:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/opay/face/common/util/TraceUtils;->t(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->n:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/opay/face/common/util/TraceUtils;->v(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->o:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/opay/face/common/util/TraceUtils;->w(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->p:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/opay/face/common/util/TraceUtils;->x(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object v0, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/opay/face/common/config/OAppConfig;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v1, "opay_face"

    .line 139
    .line 140
    invoke-static {v0, v1}, Lgz5;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_4

    .line 149
    .line 150
    const/16 v0, -0x3f0

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->W(I)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_4
    sget-object v1, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 157
    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v3, "facePath:"

    .line 164
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {v1, v2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iput-object v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->e:Ljava/lang/String;

    .line 196
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->e:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v2, "face_images"

    .line 208
    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    iput-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->f:Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {v0}, Lgz5;->j(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method public L()V
    .locals 0

    .line 1
    return-void
.end method

.method public M()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method public O(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public P(Lcom/opay/face/common/fragment/BaseLiveFragment$a;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->a:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->Q([Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->a:[Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->R([Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "\u8bf7\u6c42\u6743\u9650"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-boolean v2, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->d:Z

    .line 29
    .line 30
    iput-object p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->c:Lcom/opay/face/common/fragment/BaseLiveFragment$a;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->a:[Ljava/lang/String;

    .line 33
    .line 34
    const/16 v0, 0x88

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-interface {p1, v2}, Lcom/opay/face/common/fragment/BaseLiveFragment$a;->a(Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public S()V
    .locals 0

    .line 1
    return-void
.end method

.method public T(Lcom/opay/face/common/fragment/BaseLiveFragment$b;)V
    .locals 2
    .param p1    # Lcom/opay/face/common/fragment/BaseLiveFragment$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->E:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->E:Landroidx/fragment/app/FragmentActivity;

    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment$b;->a(Landroidx/fragment/app/FragmentActivity;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public U()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->y:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->x:Landroid/media/AudioManager;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    mul-int/lit8 v0, v0, 0x64

    .line 15
    .line 16
    iget v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->y:I

    .line 17
    .line 18
    div-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->A:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public V(Landroid/app/Activity;F)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public W(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->U()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->M()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    new-instance v0, Lcom/opay/face/common/model/LiveTraceResult;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/opay/face/common/model/LiveTraceResult;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/opay/face/common/fragment/BaseLiveFragment;->G(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/16 v2, -0x3e9

    .line 20
    .line 21
    if-eq p1, v2, :cond_1

    .line 22
    .line 23
    const/16 v2, -0x3ea

    .line 24
    .line 25
    if-eq p1, v2, :cond_1

    .line 26
    .line 27
    const/16 v2, -0x3ec

    .line 28
    .line 29
    if-eq p1, v2, :cond_1

    .line 30
    .line 31
    const/16 v2, -0x3ef

    .line 32
    .line 33
    if-eq p1, v2, :cond_1

    .line 34
    .line 35
    const/16 v2, -0x3eb

    .line 36
    .line 37
    if-eq p1, v2, :cond_1

    .line 38
    .line 39
    const/16 v2, -0x3ed

    .line 40
    .line 41
    if-ne p1, v2, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v2, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 47
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iput-object v3, v0, Lcom/opay/face/common/model/LiveTraceResult;->a:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v1, v0, Lcom/opay/face/common/model/LiveTraceResult;->b:Ljava/lang/String;

    .line 54
    .line 55
    iget v3, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->z:I

    .line 56
    .line 57
    iput v3, v0, Lcom/opay/face/common/model/LiveTraceResult;->f:I

    .line 58
    .line 59
    iget v3, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->A:I

    .line 60
    .line 61
    iput v3, v0, Lcom/opay/face/common/model/LiveTraceResult;->g:I

    .line 62
    .line 63
    invoke-static {}, Lcom/opay/face/util/Logs;->h()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-static {v4}, Lcom/opay/face/util/Logs;->r(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object v3, v0, Lcom/opay/face/common/model/LiveTraceResult;->d:Ljava/lang/String;

    .line 72
    .line 73
    iget v3, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->B:I

    .line 74
    .line 75
    iput v3, v0, Lcom/opay/face/common/model/LiveTraceResult;->e:I

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->H()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    iput v3, v0, Lcom/opay/face/common/model/LiveTraceResult;->h:I

    .line 82
    .line 83
    iput-boolean v2, v0, Lcom/opay/face/common/model/LiveTraceResult;->i:Z

    .line 84
    .line 85
    iget-boolean v2, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->G:Z

    .line 86
    .line 87
    iput-boolean v2, v0, Lcom/opay/face/common/model/LiveTraceResult;->j:Z

    .line 88
    .line 89
    iget-object v2, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 90
    .line 91
    invoke-static {v0, v2}, Lcom/opay/face/common/util/TraceUtils;->o(Lcom/opay/face/common/model/LiveTraceResult;Lcom/opay/face/common/config/OAppConfig;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcom/opay/face/phoneface/model/OFaceLiveError;

    .line 95
    .line 96
    invoke-direct {v0, p1, v1}, Lcom/opay/face/phoneface/model/OFaceLiveError;-><init>(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->D:I

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Lcom/opay/face/phoneface/model/OFaceLiveError;->d(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->H()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-virtual {v0, p1}, Lcom/opay/face/phoneface/model/OFaceLiveError;->e(I)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lcom/opay/face/common/OFaceLiveSender;->b()Lcom/opay/face/common/OFaceLiveSender;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, v0}, Lcom/opay/face/common/OFaceLiveSender;->a(Lcom/opay/face/phoneface/model/OFaceLiveError;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->F()V

    .line 119
    .line 120
    .line 121
    :cond_2
    return-void
.end method

.method public X()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->y:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->x:Landroid/media/AudioManager;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    mul-int/lit8 v0, v0, 0x64

    .line 15
    .line 16
    iget v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->y:I

    .line 17
    .line 18
    div-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->z:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onAttach."

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->F:Landroid/content/Context;

    .line 12
    .line 13
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->E:Landroidx/fragment/app/FragmentActivity;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public abstract onBackPressed()Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/16 p1, -0x3ed

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/opay/face/common/fragment/BaseLiveFragment;->W(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object p1, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "onCreate."

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/16 v0, 0x80

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget v1, Lcom/opay/face/R$color;->live_white:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-static {p1, v0}, Lcom/opay/face/common/util/ScreenTools;->d(Landroid/app/Activity;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-static {p1, v0}, Lcom/opay/face/common/util/ScreenTools;->c(Landroid/app/Activity;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->K()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->C()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->B()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object p3, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "onCreateView."

    .line 4
    .line 5
    invoke-static {p3, v0}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->I()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onDestroy."

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->k:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->n()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onDestroyView."

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onDetach."

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->E:Landroidx/fragment/app/FragmentActivity;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->F:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onPause..."

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/high16 v1, -0x40800000    # -1.0f

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/opay/face/common/fragment/BaseLiveFragment;->V(Landroid/app/Activity;F)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->t:Z

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->v:Z

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->w:Z

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->d:Z

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->onBackPressed()Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 3
    .line 4
    const-string v2, "onRequestPermissionsResult..."

    .line 5
    .line 6
    invoke-static {v1, v2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->d:Z

    .line 11
    .line 12
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x88

    .line 16
    .line 17
    if-ne p1, v2, :cond_3

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    :goto_0
    array-length v3, p2

    .line 22
    if-ge p1, v3, :cond_2

    .line 23
    .line 24
    sget-object v3, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 25
    .line 26
    aget v4, p3, p1

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    const-string v4, "\u5df2"

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const-string v4, "\u672a"

    .line 34
    .line 35
    :goto_1
    aget-object v5, p2, p1

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    new-array v6, v6, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object v4, v6, v1

    .line 41
    .line 42
    aput-object v5, v6, v0

    .line 43
    .line 44
    const-string v4, "%s\u83b7\u5f97<%s>\u6743\u9650."

    .line 45
    .line 46
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v3, v4}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    aget v3, p3, p1

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    :cond_1
    add-int/2addr p1, v0

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->c:Lcom/opay/face/common/fragment/BaseLiveFragment$a;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-interface {p1, v2}, Lcom/opay/face/common/fragment/BaseLiveFragment$a;->a(Z)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onResume..."

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/opay/face/common/fragment/BaseLiveFragment;->V(Landroid/app/Activity;F)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->t:Z

    .line 22
    .line 23
    iget v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->s:I

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v0, "onResume => finish."

    .line 28
    .line 29
    invoke-static {v0}, Lcom/opay/face/util/Logs;->b(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->k:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->p()V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->s:I

    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    iput v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->s:I

    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onStart."

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onStop."

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->S()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/opay/face/common/fragment/BaseLiveFragment;->H:Ljava/lang/String;

    .line 5
    .line 6
    const-string p2, "onViewCreated."

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->L()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->D()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public r(I)V
    .locals 0

    .line 1
    return-void
.end method
