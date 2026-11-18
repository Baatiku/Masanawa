.class public final Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder$onBindViewHolder$$inlined$doAfterTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;->f(ILteam/opay/business/transfer/flow/api/RefundInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release",
        "androidx/core/widget/TextViewKt$doAfterTextChanged$$inlined$addTextChangedListener$default$1"
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
.field public final synthetic a:Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;

.field public final synthetic b:Lteam/opay/business/transfer/flow/api/RefundInfo;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;Lteam/opay/business/transfer/flow/api/RefundInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder$onBindViewHolder$$inlined$doAfterTextChanged$1;->a:Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder$onBindViewHolder$$inlined$doAfterTextChanged$1;->b:Lteam/opay/business/transfer/flow/api/RefundInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder$onBindViewHolder$$inlined$doAfterTextChanged$1;->a:Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;->c(Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;)Le86;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Le86;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder$onBindViewHolder$$inlined$doAfterTextChanged$1;->b:Lteam/opay/business/transfer/flow/api/RefundInfo;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/api/RefundInfo;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder$onBindViewHolder$$inlined$doAfterTextChanged$1;->a:Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;->d()Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder$onBindViewHolder$$inlined$doAfterTextChanged$1;->b:Lteam/opay/business/transfer/flow/api/RefundInfo;

    .line 33
    .line 34
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
