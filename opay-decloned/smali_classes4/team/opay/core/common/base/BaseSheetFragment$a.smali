.class public final Lteam/opay/core/common/base/BaseSheetFragment$a;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "BaseSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/common/base/BaseSheetFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/core/common/base/BaseSheetFragment$a",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "Landroid/view/View;",
        "bottomSheet",
        "",
        "slideOffset",
        "",
        "onSlide",
        "(Landroid/view/View;F)V",
        "",
        "newState",
        "onStateChanged",
        "(Landroid/view/View;I)V",
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
.field public final synthetic a:Lteam/opay/core/common/base/BaseSheetFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/common/base/BaseSheetFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/common/base/BaseSheetFragment$a;->a:Lteam/opay/core/common/base/BaseSheetFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lteam/opay/core/common/base/BaseSheetFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/common/base/BaseSheetFragment$a;->b(Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b(Lteam/opay/core/common/base/BaseSheetFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0

    .line 1
    const-string p2, "bottomSheet"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "bottomSheet"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    if-eq p2, p1, :cond_2

    .line 8
    .line 9
    const/4 p1, 0x5

    .line 10
    if-eq p2, p1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lteam/opay/core/common/base/BaseSheetFragment$a;->a:Lteam/opay/core/common/base/BaseSheetFragment;

    .line 17
    .line 18
    invoke-static {p1}, Lqe6;->b(Landroidx/fragment/app/DialogFragment;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p2, p0, Lteam/opay/core/common/base/BaseSheetFragment$a;->a:Lteam/opay/core/common/base/BaseSheetFragment;

    .line 25
    .line 26
    new-instance v0, Lcx0;

    .line 27
    .line 28
    invoke-direct {v0, p2}, Lcx0;-><init>(Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lteam/opay/core/common/base/BaseSheetFragment$a;->a:Lteam/opay/core/common/base/BaseSheetFragment;

    .line 36
    .line 37
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object p1, p0, Lteam/opay/core/common/base/BaseSheetFragment$a;->a:Lteam/opay/core/common/base/BaseSheetFragment;

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseSheetFragment;->N()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lteam/opay/core/common/base/BaseSheetFragment$a;->a:Lteam/opay/core/common/base/BaseSheetFragment;

    .line 50
    .line 51
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseSheetFragment;->G()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const/4 p2, 0x3

    .line 58
    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_0
    return-void
.end method
