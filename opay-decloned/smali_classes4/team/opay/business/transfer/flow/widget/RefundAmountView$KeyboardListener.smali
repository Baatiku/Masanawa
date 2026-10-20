.class public final Lteam/opay/business/transfer/flow/widget/RefundAmountView$KeyboardListener;
.super Lteam/opay/core/widget/internal/OnInputCallback;
.source "RefundAmountView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/transfer/flow/widget/RefundAmountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeyboardListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/widget/RefundAmountView$KeyboardListener;",
        "Lteam/opay/core/widget/internal/OnInputCallback;",
        "<init>",
        "(Lteam/opay/business/transfer/flow/widget/RefundAmountView;)V",
        "",
        "num",
        "",
        "e",
        "(I)V",
        "",
        "point",
        "g",
        "(Ljava/lang/String;)V",
        "b",
        "()V",
        "c",
        "a",
        "business-transfer-flow_release"
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
.field public final synthetic a:Lteam/opay/business/transfer/flow/widget/RefundAmountView;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/widget/RefundAmountView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView$KeyboardListener;->a:Lteam/opay/business/transfer/flow/widget/RefundAmountView;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/core/widget/internal/OnInputCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView$KeyboardListener;->a:Lteam/opay/business/transfer/flow/widget/RefundAmountView;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->c(Lteam/opay/business/transfer/flow/widget/RefundAmountView;)Landroid/widget/EditText;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView$KeyboardListener;->a:Lteam/opay/business/transfer/flow/widget/RefundAmountView;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->c(Lteam/opay/business/transfer/flow/widget/RefundAmountView;)Landroid/widget/EditText;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView$KeyboardListener;->a:Lteam/opay/business/transfer/flow/widget/RefundAmountView;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->d(Lteam/opay/business/transfer/flow/widget/RefundAmountView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView$KeyboardListener;->a:Lteam/opay/business/transfer/flow/widget/RefundAmountView;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->h(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView$KeyboardListener;->a:Lteam/opay/business/transfer/flow/widget/RefundAmountView;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->c(Lteam/opay/business/transfer/flow/widget/RefundAmountView;)Landroid/widget/EditText;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView$KeyboardListener;->a:Lteam/opay/business/transfer/flow/widget/RefundAmountView;

    .line 25
    .line 26
    invoke-static {v1}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->c(Lteam/opay/business/transfer/flow/widget/RefundAmountView;)Landroid/widget/EditText;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "point"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView$KeyboardListener;->a:Lteam/opay/business/transfer/flow/widget/RefundAmountView;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->c(Lteam/opay/business/transfer/flow/widget/RefundAmountView;)Landroid/widget/EditText;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v2, "."

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v1, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView$KeyboardListener;->a:Lteam/opay/business/transfer/flow/widget/RefundAmountView;

    .line 37
    .line 38
    invoke-static {v1}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->c(Lteam/opay/business/transfer/flow/widget/RefundAmountView;)Landroid/widget/EditText;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 47
    .line 48
    .line 49
    return-void
.end method
