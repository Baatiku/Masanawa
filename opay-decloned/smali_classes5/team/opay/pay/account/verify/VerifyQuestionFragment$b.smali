.class public final Lteam/opay/pay/account/verify/VerifyQuestionFragment$b;
.super Ljava/lang/Object;
.source "VerifyQuestionFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/verify/VerifyQuestionFragment;->G0(Lteam/opay/pay/android/views/KeyboardEditText;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0010\u0008\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J1\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ1\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "team/opay/pay/account/verify/VerifyQuestionFragment$b",
        "Landroid/text/TextWatcher;",
        "Landroid/text/Editable;",
        "s",
        "",
        "afterTextChanged",
        "(Landroid/text/Editable;)V",
        "",
        "",
        "start",
        "count",
        "after",
        "beforeTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "before",
        "onTextChanged",
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
.field public final synthetic a:Lteam/opay/pay/account/verify/VerifyQuestionFragment;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lteam/opay/pay/account/verify/VerifyQuestionFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyQuestionFragment$b;->a:Lteam/opay/pay/account/verify/VerifyQuestionFragment;

    .line 2
    .line 3
    iput p2, p0, Lteam/opay/pay/account/verify/VerifyQuestionFragment$b;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Ljava/lang/CharSequence;III)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/account/verify/VerifyQuestionFragment$b;->b(Ljava/lang/CharSequence;III)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Ljava/lang/CharSequence;III)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, " ... start = "

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, " before = "

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, " count = "

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyQuestionFragment$b;->a:Lteam/opay/pay/account/verify/VerifyQuestionFragment;

    .line 4
    .line 5
    iget v1, p0, Lteam/opay/pay/account/verify/VerifyQuestionFragment$b;->b:I

    .line 6
    .line 7
    sget-object v2, Lxk8;->a:Lxk8;

    .line 8
    .line 9
    new-instance v3, Lnuf;

    .line 10
    .line 11
    invoke-direct {v3, p1, p2, p3, p4}, Lnuf;-><init>(Ljava/lang/CharSequence;III)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    const/4 p3, 0x1

    .line 16
    invoke-static {v2, p2, v3, p3, p2}, Lxk8;->i(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lteam/opay/pay/account/verify/VerifyQuestionFragment;->F0(Lteam/opay/pay/account/verify/VerifyQuestionFragment;)[Z

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-lez p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p3, 0x0

    .line 31
    :goto_0
    aput-boolean p3, p2, v1

    .line 32
    .line 33
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lrj6;

    .line 38
    .line 39
    iget-object p1, p1, Lrj6;->k:Landroid/widget/Button;

    .line 40
    .line 41
    invoke-static {v0}, Lteam/opay/pay/account/verify/VerifyQuestionFragment;->F0(Lteam/opay/pay/account/verify/VerifyQuestionFragment;)[Z

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v0, p2}, Lteam/opay/pay/account/verify/VerifyQuestionFragment;->M0([Z)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method
