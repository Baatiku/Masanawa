.class public final Lteam/opay/spos/base/common/PinInputBottomDialogFragment$a;
.super Ljava/lang/Object;
.source "PinInputBottomDialogFragment.kt"

# interfaces
.implements Lteam/opay/core/widget/FixCodeInputField$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/base/common/PinInputBottomDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/spos/base/common/PinInputBottomDialogFragment$a",
        "Lteam/opay/core/widget/FixCodeInputField$a;",
        "",
        "verifyCode",
        "",
        "isComplete",
        "",
        "a",
        "(Ljava/lang/String;Z)V",
        "spos-common-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/spos/base/common/PinInputBottomDialogFragment;


# direct methods
.method public constructor <init>(Lteam/opay/spos/base/common/PinInputBottomDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/spos/base/common/PinInputBottomDialogFragment$a;->a:Lteam/opay/spos/base/common/PinInputBottomDialogFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "verifyCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Lteam/opay/spos/base/common/PinInputBottomDialogFragment$a;->a:Lteam/opay/spos/base/common/PinInputBottomDialogFragment;

    .line 9
    .line 10
    invoke-virtual {p2}, Lteam/opay/spos/base/common/PinInputBottomDialogFragment;->C()Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lteam/opay/spos/base/common/PinInputBottomDialogFragment$a;->a:Lteam/opay/spos/base/common/PinInputBottomDialogFragment;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method
