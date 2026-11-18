.class final Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment$onViewCreated$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PrinterVerifyPinDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/text/Editable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/text/Editable;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_apply:Lteam/opay/core/widget/TextInputView;


# direct methods
.method public constructor <init>(Lteam/opay/core/widget/TextInputView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment$onViewCreated$1$1$1;->$this_apply:Lteam/opay/core/widget/TextInputView;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/text/Editable;

    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment$onViewCreated$1$1$1;->invoke(Landroid/text/Editable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/text/Editable;)V
    .locals 1
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment$onViewCreated$1$1$1;->$this_apply:Lteam/opay/core/widget/TextInputView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lteam/opay/core/widget/TextInputView;->setActivated(Z)V

    .line 3
    iget-object p1, p0, Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment$onViewCreated$1$1$1;->$this_apply:Lteam/opay/core/widget/TextInputView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lteam/opay/core/widget/TextInputView;->setErrorText(Ljava/lang/String;)V

    return-void
.end method
