.class public abstract Lteam/opay/opb/common/base/EdgeFragment;
.super Landroidx/fragment/app/Fragment;
.source "EdgeFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004B\u0013\u0008\u0016\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0003\u0010\u0007J!\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\"\u0010\u0010\u001a\u00020\u000f8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0016\u001a\u00020\u000f8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R\u001b\u0010\u001e\u001a\u00020\u00198FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001b\u001a\u0004\u0008!\u0010\"R\"\u0010$\u001a\u00020\u00058\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010\u0007\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/opb/common/base/EdgeFragment;",
        "Landroidx/fragment/app/Fragment;",
        "",
        "<init>",
        "()V",
        "",
        "layoutId",
        "(I)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "insetTop",
        "Z",
        "getInsetTop",
        "()Z",
        "setInsetTop",
        "(Z)V",
        "insetBottom",
        "getInsetBottom",
        "setInsetBottom",
        "Landroidx/fragment/app/FragmentActivity;",
        "fragmentActivity$delegate",
        "Lid8;",
        "getFragmentActivity",
        "()Landroidx/fragment/app/FragmentActivity;",
        "fragmentActivity",
        "Landroid/content/Context;",
        "appContext$delegate",
        "getAppContext",
        "()Landroid/content/Context;",
        "appContext",
        "navColor",
        "I",
        "getNavColor",
        "()I",
        "setNavColor",
        "common-base_release"
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
.field private final appContext$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fragmentActivity$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private insetBottom:Z

.field private insetTop:Z

.field private navColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/common/base/EdgeFragment;->insetBottom:Z

    .line 3
    new-instance v0, Ldf5;

    invoke-direct {v0, p0}, Ldf5;-><init>(Lteam/opay/opb/common/base/EdgeFragment;)V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/opb/common/base/EdgeFragment;->fragmentActivity$delegate:Lid8;

    .line 4
    new-instance v0, Lef5;

    invoke-direct {v0}, Lef5;-><init>()V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/opb/common/base/EdgeFragment;->appContext$delegate:Lid8;

    .line 5
    sget v0, Lteam/opay/core/common/R$color;->opb_white:I

    iput v0, p0, Lteam/opay/opb/common/base/EdgeFragment;->navColor:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lteam/opay/opb/common/base/EdgeFragment;->insetBottom:Z

    .line 8
    new-instance p1, Ldf5;

    invoke-direct {p1, p0}, Ldf5;-><init>(Lteam/opay/opb/common/base/EdgeFragment;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/opb/common/base/EdgeFragment;->fragmentActivity$delegate:Lid8;

    .line 9
    new-instance p1, Lef5;

    invoke-direct {p1}, Lef5;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/opb/common/base/EdgeFragment;->appContext$delegate:Lid8;

    .line 10
    sget p1, Lteam/opay/core/common/R$color;->opb_white:I

    iput p1, p0, Lteam/opay/opb/common/base/EdgeFragment;->navColor:I

    return-void
.end method

.method public static synthetic A()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/common/base/EdgeFragment;->appContext_delegate$lambda$1()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic B(Lteam/opay/opb/common/base/EdgeFragment;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/common/base/EdgeFragment;->fragmentActivity_delegate$lambda$0(Lteam/opay/opb/common/base/EdgeFragment;)Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final appContext_delegate$lambda$1()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static final fragmentActivity_delegate$lambda$0(Lteam/opay/opb/common/base/EdgeFragment;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final getAppContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/common/base/EdgeFragment;->appContext$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getFragmentActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/common/base/EdgeFragment;->fragmentActivity$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    return-object v0
.end method

.method public getInsetBottom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/common/base/EdgeFragment;->insetBottom:Z

    .line 2
    .line 3
    return v0
.end method

.method public getInsetTop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/common/base/EdgeFragment;->insetTop:Z

    .line 2
    .line 3
    return v0
.end method

.method public getNavColor()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/opb/common/base/EdgeFragment;->navColor:I

    .line 2
    .line 3
    return v0
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
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-void
.end method

.method public setInsetBottom(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/common/base/EdgeFragment;->insetBottom:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInsetTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/common/base/EdgeFragment;->insetTop:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNavColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/opb/common/base/EdgeFragment;->navColor:I

    .line 2
    .line 3
    return-void
.end method
