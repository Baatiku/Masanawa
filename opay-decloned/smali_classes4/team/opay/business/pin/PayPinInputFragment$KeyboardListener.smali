.class public final Lteam/opay/business/pin/PayPinInputFragment$KeyboardListener;
.super Lteam/opay/core/widget/internal/OnInputCallback;
.source "PayPinInputFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/pin/PayPinInputFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeyboardListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/business/pin/PayPinInputFragment$KeyboardListener;",
        "Lteam/opay/core/widget/internal/OnInputCallback;",
        "<init>",
        "(Lteam/opay/business/pin/PayPinInputFragment;)V",
        "",
        "num",
        "",
        "e",
        "(I)V",
        "a",
        "()V",
        "business-pin_release"
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
.field public final synthetic a:Lteam/opay/business/pin/PayPinInputFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/pin/PayPinInputFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/pin/PayPinInputFragment$KeyboardListener;->a:Lteam/opay/business/pin/PayPinInputFragment;

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
    iget-object v0, p0, Lteam/opay/business/pin/PayPinInputFragment$KeyboardListener;->a:Lteam/opay/business/pin/PayPinInputFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/pin/PayPinInputFragment;->b0(Lteam/opay/business/pin/PayPinInputFragment;)Lm52;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lm52;->e:Lteam/opay/core/widget/FixCodeInputField;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/widget/FixCodeInputField;->getEditText()Landroidx/appcompat/widget/AppCompatEditText;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/lit8 v2, v2, -0x1

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/pin/PayPinInputFragment$KeyboardListener;->a:Lteam/opay/business/pin/PayPinInputFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/pin/PayPinInputFragment;->b0(Lteam/opay/business/pin/PayPinInputFragment;)Lm52;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lm52;->e:Lteam/opay/core/widget/FixCodeInputField;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/widget/FixCodeInputField;->getEditText()Landroidx/appcompat/widget/AppCompatEditText;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lteam/opay/business/pin/PayPinInputFragment$KeyboardListener;->a:Lteam/opay/business/pin/PayPinInputFragment;

    .line 18
    .line 19
    invoke-static {v1}, Lteam/opay/business/pin/PayPinInputFragment;->b0(Lteam/opay/business/pin/PayPinInputFragment;)Lm52;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v1, v1, Lm52;->e:Lteam/opay/core/widget/FixCodeInputField;

    .line 24
    .line 25
    invoke-virtual {v1}, Lteam/opay/core/widget/FixCodeInputField;->getEditText()Landroidx/appcompat/widget/AppCompatEditText;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ltz v1, :cond_0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
