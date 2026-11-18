.class public final Lteam/opay/pay/home/dialog/HomeAdDialogTask;
.super Lteam/opay/pay/home/dialog/HomeDialogTask;
.source "HomeAdDialogTask.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0096@\u00a2\u0006\u0004\u0008\r\u0010\u000eJ3\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u001a\u0010\u0014\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0019R\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001d\u0010&\u001a\u0004\u0018\u00010\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001b\u001a\u0004\u0008$\u0010%R\u0016\u0010)\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lteam/opay/pay/home/dialog/HomeAdDialogTask;",
        "Lteam/opay/pay/home/dialog/HomeDialogTask;",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "<init>",
        "(Landroidx/fragment/app/Fragment;)V",
        "",
        "k",
        "()Z",
        "Lkotlinx/coroutines/l;",
        "e",
        "()Lkotlinx/coroutines/l;",
        "Landroidx/fragment/app/DialogFragment;",
        "d",
        "(Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/odialog/net/AdDataItem;",
        "data",
        "Lkotlin/Function2;",
        "",
        "",
        "callback",
        "y",
        "(Lteam/opay/odialog/net/AdDataItem;Lkotlin/jvm/functions/Function2;)V",
        "x",
        "()V",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;",
        "Lid8;",
        "w",
        "()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;",
        "viewModel",
        "f",
        "Lteam/opay/odialog/net/AdDataItem;",
        "popData",
        "Lteam/opay/pay/home/MainActivity;",
        "g",
        "v",
        "()Lteam/opay/pay/home/MainActivity;",
        "activity",
        "h",
        "I",
        "dialogHeight",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final d:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lteam/opay/odialog/net/AdDataItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/home/dialog/HomeDialogTask;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->d:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    const-class v0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lteam/opay/pay/home/dialog/HomeAdDialogTask$special$$inlined$activityViewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lteam/opay/pay/home/dialog/HomeAdDialogTask$special$$inlined$activityViewModels$default$2;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {v2, v3, p1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lteam/opay/pay/home/dialog/HomeAdDialogTask$special$$inlined$activityViewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v3, p1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->e:Lid8;

    .line 38
    .line 39
    new-instance p1, Lyx6;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Lyx6;-><init>(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->g:Lid8;

    .line 49
    .line 50
    return-void
.end method

.method public static final A(Lteam/opay/odialog/net/AdDataItem;Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lteam/opay/odialog/net/AdDataItem;->getDiverseImgUrl()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lteam/opay/odialog/net/AdDataItem;->getDiverseImgUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lteam/opay/odialog/net/AdDataItem;->getImg_url()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_1
    sget-object v1, Lx7b;->a:Lx7b;

    .line 25
    .line 26
    const-string v2, "img"

    .line 27
    .line 28
    invoke-static {v2, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v2, 0x1

    .line 33
    new-array v2, v2, [Lkotlin/Pair;

    .line 34
    .line 35
    aput-object p0, v2, v0

    .line 36
    .line 37
    const-string p0, "home_ad_dialog_image_load_error"

    .line 38
    .line 39
    invoke-virtual {v1, p0, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method

.method public static synthetic l(Lkotlin/jvm/functions/Function2;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;II)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->z(Lkotlin/jvm/functions/Function2;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;II)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)Lteam/opay/pay/home/MainActivity;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->u(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)Lteam/opay/pay/home/MainActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Lteam/opay/odialog/net/AdDataItem;Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->A(Lteam/opay/odialog/net/AdDataItem;Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->d:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->w()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r(Lteam/opay/pay/home/dialog/HomeAdDialogTask;Lteam/opay/odialog/net/AdDataItem;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->y(Lteam/opay/odialog/net/AdDataItem;Lkotlin/jvm/functions/Function2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic s(Lteam/opay/pay/home/dialog/HomeAdDialogTask;I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic t(Lteam/opay/pay/home/dialog/HomeAdDialogTask;Lteam/opay/odialog/net/AdDataItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->f:Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    return-void
.end method

.method public static final u(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)Lteam/opay/pay/home/MainActivity;
    .locals 1

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->d:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of v0, p0, Lteam/opay/pay/home/MainActivity;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Lteam/opay/pay/home/MainActivity;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public static final z(Lkotlin/jvm/functions/Function2;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;II)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "img"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-lez p3, :cond_1

    .line 7
    .line 8
    if-gtz p4, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p2, 0x12c

    .line 12
    .line 13
    invoke-static {p2}, Ljmf;->d(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    int-to-float p2, p2

    .line 18
    int-to-float p3, p3

    .line 19
    div-float/2addr p2, p3

    .line 20
    int-to-float p3, p4

    .line 21
    mul-float p2, p2, p3

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/16 p2, 0x190

    .line 25
    .line 26
    invoke-static {p2}, Ljmf;->d(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    int-to-float p2, p2

    .line 31
    :goto_1
    float-to-int p2, p2

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method


# virtual methods
.method public d(Ljr2;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Landroidx/fragment/app/DialogFragment;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->h:I

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->f:Lteam/opay/odialog/net/AdDataItem;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    sget-object v0, Lx7b;->a:Lx7b;

    .line 13
    .line 14
    const-string v1, "POP_ads"

    .line 15
    .line 16
    const-string v2, "interstitial_ad"

    .line 17
    .line 18
    invoke-virtual {v0, p1, v1, v2}, Lx7b;->C(Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    new-instance v3, Lcom/opay/team/home/dialog/HomeConfirgDialogManager;

    .line 22
    .line 23
    invoke-direct {v3}, Lcom/opay/team/home/dialog/HomeConfirgDialogManager;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->d:Landroidx/fragment/app/Fragment;

    .line 27
    .line 28
    iget-object v5, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->f:Lteam/opay/odialog/net/AdDataItem;

    .line 29
    .line 30
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget v7, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->h:I

    .line 34
    .line 35
    const/4 v8, 0x1

    .line 36
    const-string v6, "source_popup"

    .line 37
    .line 38
    invoke-virtual/range {v3 .. v8}, Lcom/opay/team/home/dialog/HomeConfirgDialogManager;->e(Landroidx/fragment/app/Fragment;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;IZ)Lteam/opay/odialog/BaseBindingConfigDialog;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialog$3$1;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialog$3$1;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lteam/opay/odialog/BaseBindingConfigDialog;->H(Lkotlin/jvm/functions/Function0;)V

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method public e()Lkotlinx/coroutines/l;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->d:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeDialogTask;->f()Lkotlinx/coroutines/e;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v4, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;-><init>(Lteam/opay/pay/home/dialog/HomeAdDialogTask;Ljr2;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->v()Lteam/opay/pay/home/MainActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final v()Lteam/opay/pay/home/MainActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/MainActivity;

    .line 8
    .line 9
    return-object v0
.end method

.method public final w()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final x()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->d:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    iget-object v1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->d:Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_4

    .line 17
    .line 18
    iget-object v1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->d:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->d:Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    sget-object v1, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 36
    .line 37
    sget-object v2, Lteam/opay/pay/home/Service;->COMMON:Lteam/opay/pay/home/Service;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/opay/team/OPayAnalytics$Companion;->b(Lteam/opay/pay/home/Service;)Lcom/opay/team/OPayAnalytics;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    new-array v2, v0, [Lkotlin/Pair;

    .line 46
    .line 47
    const-string v3, "home_popup_page_close"

    .line 48
    .line 49
    invoke-virtual {v1, v3, v2}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    sget-object v1, Lx7b;->a:Lx7b;

    .line 53
    .line 54
    new-instance v2, Lkotlin/Pair;

    .line 55
    .line 56
    const-string v3, "ad_type"

    .line 57
    .line 58
    const-string v4, "home_popup"

    .line 59
    .line 60
    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v3, Lkotlin/Pair;

    .line 64
    .line 65
    iget-object v4, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->f:Lteam/opay/odialog/net/AdDataItem;

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {v4}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move-object v4, v5

    .line 76
    :goto_0
    const-string v6, "ad_id"

    .line 77
    .line 78
    invoke-direct {v3, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    new-instance v4, Lkotlin/Pair;

    .line 82
    .line 83
    iget-object v6, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->f:Lteam/opay/odialog/net/AdDataItem;

    .line 84
    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    invoke-virtual {v6}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    :cond_3
    const-string v6, "ad_action_url"

    .line 92
    .line 93
    invoke-direct {v4, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    const/4 v5, 0x3

    .line 97
    new-array v5, v5, [Lkotlin/Pair;

    .line 98
    .line 99
    aput-object v2, v5, v0

    .line 100
    .line 101
    const/4 v0, 0x1

    .line 102
    aput-object v3, v5, v0

    .line 103
    .line 104
    const/4 v0, 0x2

    .line 105
    aput-object v4, v5, v0

    .line 106
    .line 107
    const-string v0, "ad_close_click"

    .line 108
    .line 109
    invoke-virtual {v1, v0, v5}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_1
    return-void
.end method

.method public final y(Lteam/opay/odialog/net/AdDataItem;Lkotlin/jvm/functions/Function2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/odialog/net/AdDataItem;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lteam/opay/odialog/net/AdDataItem;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Llm;->a:Llm;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->d:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "requireActivity(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getDiverseImgUrl()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getImg_url()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-instance v4, Lzx6;

    .line 23
    .line 24
    invoke-direct {v4, p2, p1}, Lzx6;-><init>(Lkotlin/jvm/functions/Function2;Lteam/opay/odialog/net/AdDataItem;)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Lay6;

    .line 28
    .line 29
    invoke-direct {v5, p1, p2}, Lay6;-><init>(Lteam/opay/odialog/net/AdDataItem;Lkotlin/jvm/functions/Function2;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {v0 .. v5}, Llm;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lhm6;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
