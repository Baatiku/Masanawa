.class public final Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;
.super Lteam/opay/core/base/BaseSheetInjectFragmentV2;
.source "ChooseDownloadAccountDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/download/ChooseDownloadAccountDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseSheetInjectFragmentV2<",
        "Lla3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eR)\u0010\u0017\u001a\u0010\u0012\u000c\u0012\n \u0012*\u0004\u0018\u00010\u00110\u00110\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u001b\u001a\u0004\u0018\u00010\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0014\u001a\u0004\u0008\u0019\u0010\u001aR0\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\t\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;",
        "Lteam/opay/core/base/BaseSheetInjectFragmentV2;",
        "Lla3;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "G",
        "()I",
        "T",
        "Ljava/util/ArrayList;",
        "",
        "kotlin.jvm.PlatformType",
        "l",
        "Lid8;",
        "U",
        "()Ljava/util/ArrayList;",
        "list",
        "m",
        "V",
        "()Ljava/lang/String;",
        "selectAccount",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/history/download/SelectAccount;",
        "n",
        "Lkotlin/jvm/functions/Function1;",
        "getAccountClick",
        "()Lkotlin/jvm/functions/Function1;",
        "a0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "accountClick",
        "o",
        "Companion",
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


# static fields
.field public static final o:Lteam/opay/pay/history/download/ChooseDownloadAccountDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/history/download/SelectAccount;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->o:Lteam/opay/pay/history/download/ChooseDownloadAccountDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog$1;->INSTANCE:Lteam/opay/pay/history/download/ChooseDownloadAccountDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseSheetInjectFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgd2;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lgd2;-><init>(Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->l:Lid8;

    .line 16
    .line 17
    new-instance v0, Lhd2;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lhd2;-><init>(Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->m:Lid8;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/history/download/SecurityCenterMiddleAdapterAdapter;Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->Y(Lteam/opay/pay/history/download/SecurityCenterMiddleAdapterAdapter;Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q(Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->X(Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->W(Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->Z(Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final U()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final W(Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "key_data"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final Y(Lteam/opay/pay/history/download/SecurityCenterMiddleAdapterAdapter;Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/String;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    :cond_0
    iget-object p2, p1, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->n:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    new-instance p3, Lteam/opay/pay/history/download/SelectAccount;

    .line 16
    .line 17
    if-nez p4, :cond_1

    .line 18
    .line 19
    const/4 p4, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p4, 0x0

    .line 22
    :goto_0
    invoke-direct {p3, p0, p4}, Lteam/opay/pay/history/download/SelectAccount;-><init>(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static final Z(Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "key_account"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method


# virtual methods
.method public G()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->T()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final T()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x44070000    # 540.0f

    .line 8
    .line 9
    invoke-static {v0}, Ljmf;->c(F)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    float-to-int v0, v0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->U()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x4

    .line 24
    if-gt v0, v1, :cond_1

    .line 25
    .line 26
    const/high16 v1, 0x42c80000    # 100.0f

    .line 27
    .line 28
    invoke-static {v1}, Ljmf;->c(F)F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    float-to-int v1, v1

    .line 33
    mul-int v0, v0, v1

    .line 34
    .line 35
    const/16 v1, 0x50

    .line 36
    .line 37
    invoke-static {v1}, Ljmf;->d(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/2addr v0, v1

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-static {v0}, Ljmf;->q(Landroid/content/Context;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 v0, 0x1

    .line 55
    :goto_1
    int-to-float v0, v0

    .line 56
    const/high16 v1, 0x41200000    # 10.0f

    .line 57
    .line 58
    div-float/2addr v0, v1

    .line 59
    const/16 v1, 0x8

    .line 60
    .line 61
    int-to-float v1, v1

    .line 62
    mul-float v0, v0, v1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :goto_2
    return v0
.end method

.method public final V()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final a0(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/history/download/SelectAccount;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->n:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lla3;

    .line 14
    .line 15
    iget-object p1, p1, Lla3;->b:Landroid/widget/ImageView;

    .line 16
    .line 17
    const-string p2, "ivClose"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lid2;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lid2;-><init>(Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lteam/opay/pay/history/download/SecurityCenterMiddleAdapterAdapter;

    .line 31
    .line 32
    invoke-direct {p1}, Lteam/opay/pay/history/download/SecurityCenterMiddleAdapterAdapter;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->V()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    const-string p2, ""

    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1, p2}, Lteam/opay/pay/history/download/SecurityCenterMiddleAdapterAdapter;->l(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance p2, Ljd2;

    .line 47
    .line 48
    invoke-direct {p2, p1, p0}, Ljd2;-><init>(Lteam/opay/pay/history/download/SecurityCenterMiddleAdapterAdapter;Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lteam/opay/pay/history/download/ChooseDownloadAccountDialog;->U()Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lla3;

    .line 66
    .line 67
    iget-object p2, p2, Lla3;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
