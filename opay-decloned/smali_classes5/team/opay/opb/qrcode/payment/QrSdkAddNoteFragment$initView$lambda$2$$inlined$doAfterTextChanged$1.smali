.class public final Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment$initView$lambda$2$$inlined$doAfterTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment;->initView()V
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
.field public final synthetic a:Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatEditText;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment;Landroidx/appcompat/widget/AppCompatEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment$initView$lambda$2$$inlined$doAfterTextChanged$1;->a:Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment$initView$lambda$2$$inlined$doAfterTextChanged$1;->b:Landroidx/appcompat/widget/AppCompatEditText;

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
    .locals 4
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment$initView$lambda$2$$inlined$doAfterTextChanged$1;->a:Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment;

    .line 10
    .line 11
    invoke-static {v0}, Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment;->V(Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment;)Leac;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Leac;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    iget-object v1, p0, Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment$initView$lambda$2$$inlined$doAfterTextChanged$1;->a:Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment;

    .line 18
    .line 19
    invoke-static {v1}, Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment;->W(Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, "/"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment$initView$lambda$2$$inlined$doAfterTextChanged$1;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sget v0, Lteam/opay/core/common/R$color;->opb_black_25:I

    .line 55
    .line 56
    invoke-static {p1, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment$initView$lambda$2$$inlined$doAfterTextChanged$1;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget v0, Lteam/opay/core/common/R$color;->opb_black_85:I

    .line 68
    .line 69
    invoke-static {p1, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    :goto_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment$initView$lambda$2$$inlined$doAfterTextChanged$1;->a:Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment;

    .line 74
    .line 75
    invoke-static {v0}, Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment;->V(Lteam/opay/opb/qrcode/payment/QrSdkAddNoteFragment;)Leac;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v0, v0, Leac;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
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
