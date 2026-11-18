.class public final Lteam/opay/core/base/BaseSheetFragment$a;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "BaseSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/base/BaseSheetFragment;-><init>()V
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
        "team/opay/core/base/BaseSheetFragment$a",
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
.field public final synthetic a:Lteam/opay/core/base/BaseSheetFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/base/BaseSheetFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/base/BaseSheetFragment$a;->a:Lteam/opay/core/base/BaseSheetFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Lteam/opay/core/base/BaseSheetFragment$a;->a:Lteam/opay/core/base/BaseSheetFragment;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/base/BaseSheetFragment;->N(Landroid/view/View;I)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x5

    .line 12
    if-ne p2, p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/core/base/BaseSheetFragment$a;->a:Lteam/opay/core/base/BaseSheetFragment;

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
