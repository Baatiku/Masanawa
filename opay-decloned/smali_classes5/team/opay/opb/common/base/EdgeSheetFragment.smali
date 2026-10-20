.class public abstract Lteam/opay/opb/common/base/EdgeSheetFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "EdgeSheetFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004R\u001a\u0010\u000c\u001a\u00020\u00078\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0012\u001a\u00020\r8\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0018\u001a\u00020\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00198FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0015\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/opb/common/base/EdgeSheetFragment;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "",
        "<init>",
        "()V",
        "",
        "onStart",
        "",
        "a",
        "Z",
        "getInsetBottom",
        "()Z",
        "insetBottom",
        "",
        "b",
        "I",
        "getNavColor",
        "()I",
        "navColor",
        "Landroidx/fragment/app/FragmentActivity;",
        "c",
        "Lid8;",
        "getFragmentActivity",
        "()Landroidx/fragment/app/FragmentActivity;",
        "fragmentActivity",
        "Landroid/content/Context;",
        "d",
        "getAppContext",
        "()Landroid/content/Context;",
        "appContext",
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
.field public final a:Z

.field public final b:I

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lteam/opay/opb/common/base/EdgeSheetFragment;->a:Z

    .line 6
    .line 7
    sget v0, Lteam/opay/core/common/R$color;->opb_white:I

    .line 8
    .line 9
    iput v0, p0, Lteam/opay/opb/common/base/EdgeSheetFragment;->b:I

    .line 10
    .line 11
    new-instance v0, Lff5;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lff5;-><init>(Lteam/opay/opb/common/base/EdgeSheetFragment;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lteam/opay/opb/common/base/EdgeSheetFragment;->c:Lid8;

    .line 21
    .line 22
    new-instance v0, Lgf5;

    .line 23
    .line 24
    invoke-direct {v0}, Lgf5;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lteam/opay/opb/common/base/EdgeSheetFragment;->d:Lid8;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic A(Lteam/opay/opb/common/base/EdgeSheetFragment;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->C(Lteam/opay/opb/common/base/EdgeSheetFragment;)Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/common/base/EdgeSheetFragment;->appContext_delegate$lambda$1()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final C(Lteam/opay/opb/common/base/EdgeSheetFragment;)Landroidx/fragment/app/FragmentActivity;
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

.method public static final appContext_delegate$lambda$1()Landroid/content/Context;
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


# virtual methods
.method public final getAppContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/common/base/EdgeSheetFragment;->d:Lid8;

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
    iget-object v0, p0, Lteam/opay/opb/common/base/EdgeSheetFragment;->c:Lid8;

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

.method public getNavColor()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/opb/common/base/EdgeSheetFragment;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v1, Lhf5;->a:Lhf5;

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getNavColor()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {p0, v2}, Lqe6;->a(Landroidx/fragment/app/Fragment;I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v0, v2}, Lhf5;->a(Landroid/view/Window;I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
