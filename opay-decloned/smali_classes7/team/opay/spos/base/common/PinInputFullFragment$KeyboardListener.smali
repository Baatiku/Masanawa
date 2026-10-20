.class public final Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;
.super Lteam/opay/core/widget/internal/OnInputCallback;
.source "PinInputFullFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/spos/base/common/PinInputFullFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeyboardListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;",
        "Lteam/opay/core/widget/internal/OnInputCallback;",
        "<init>",
        "(Lteam/opay/spos/base/common/PinInputFullFragment;)V",
        "",
        "num",
        "",
        "e",
        "(I)V",
        "b",
        "()V",
        "c",
        "a",
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
.field public final synthetic a:Lteam/opay/spos/base/common/PinInputFullFragment;


# direct methods
.method public constructor <init>(Lteam/opay/spos/base/common/PinInputFullFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/spos/base/common/PinInputFullFragment;->X(Lteam/opay/spos/base/common/PinInputFullFragment;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 14
    .line 15
    invoke-static {v0}, Lteam/opay/spos/base/common/PinInputFullFragment;->X(Lteam/opay/spos/base/common/PinInputFullFragment;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 20
    .line 21
    invoke-static {v1}, Lteam/opay/spos/base/common/PinInputFullFragment;->X(Lteam/opay/spos/base/common/PinInputFullFragment;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 35
    .line 36
    invoke-static {v0}, Lteam/opay/spos/base/common/PinInputFullFragment;->V(Lteam/opay/spos/base/common/PinInputFullFragment;)Lei2;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Lei2;->c:Lteam/opay/core/widget/FixCodeInputField;

    .line 41
    .line 42
    invoke-virtual {v0}, Lteam/opay/core/widget/FixCodeInputField;->getEditText()Landroidx/appcompat/widget/AppCompatEditText;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 47
    .line 48
    invoke-static {v1}, Lteam/opay/spos/base/common/PinInputFullFragment;->X(Lteam/opay/spos/base/common/PinInputFullFragment;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/spos/base/common/PinInputFullFragment;->X(Lteam/opay/spos/base/common/PinInputFullFragment;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 12
    .line 13
    invoke-static {v0}, Lteam/opay/spos/base/common/PinInputFullFragment;->V(Lteam/opay/spos/base/common/PinInputFullFragment;)Lei2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lei2;->c:Lteam/opay/core/widget/FixCodeInputField;

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/core/widget/FixCodeInputField;->getEditText()Landroidx/appcompat/widget/AppCompatEditText;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, ""

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/spos/base/common/PinInputFullFragment;->X(Lteam/opay/spos/base/common/PinInputFullFragment;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 12
    .line 13
    invoke-static {v1}, Lteam/opay/spos/base/common/PinInputFullFragment;->W(Lteam/opay/spos/base/common/PinInputFullFragment;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 20
    .line 21
    invoke-virtual {v0}, Lteam/opay/spos/base/common/PinInputFullFragment;->Z()Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 28
    .line 29
    invoke-static {v1}, Lteam/opay/spos/base/common/PinInputFullFragment;->V(Lteam/opay/spos/base/common/PinInputFullFragment;)Lei2;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v1, v1, Lei2;->c:Lteam/opay/core/widget/FixCodeInputField;

    .line 34
    .line 35
    invoke-virtual {v1}, Lteam/opay/core/widget/FixCodeInputField;->getEditText()Landroidx/appcompat/widget/AppCompatEditText;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 51
    .line 52
    invoke-virtual {v0}, Lteam/opay/core/common/base/BaseDialogFragment;->dismiss()V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/spos/base/common/PinInputFullFragment;->X(Lteam/opay/spos/base/common/PinInputFullFragment;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 12
    .line 13
    invoke-static {v1}, Lteam/opay/spos/base/common/PinInputFullFragment;->W(Lteam/opay/spos/base/common/PinInputFullFragment;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 20
    .line 21
    invoke-static {v0}, Lteam/opay/spos/base/common/PinInputFullFragment;->X(Lteam/opay/spos/base/common/PinInputFullFragment;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 29
    .line 30
    invoke-static {p1}, Lteam/opay/spos/base/common/PinInputFullFragment;->V(Lteam/opay/spos/base/common/PinInputFullFragment;)Lei2;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Lei2;->c:Lteam/opay/core/widget/FixCodeInputField;

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/core/widget/FixCodeInputField;->getEditText()Landroidx/appcompat/widget/AppCompatEditText;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 41
    .line 42
    invoke-static {v0}, Lteam/opay/spos/base/common/PinInputFullFragment;->X(Lteam/opay/spos/base/common/PinInputFullFragment;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 54
    .line 55
    invoke-static {p1}, Lteam/opay/spos/base/common/PinInputFullFragment;->X(Lteam/opay/spos/base/common/PinInputFullFragment;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget-object v0, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 64
    .line 65
    invoke-static {v0}, Lteam/opay/spos/base/common/PinInputFullFragment;->W(Lteam/opay/spos/base/common/PinInputFullFragment;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-ne p1, v0, :cond_1

    .line 70
    .line 71
    iget-object p1, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 72
    .line 73
    invoke-virtual {p1}, Lteam/opay/spos/base/common/PinInputFullFragment;->Z()Lkotlin/jvm/functions/Function1;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    iget-object v0, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 80
    .line 81
    invoke-static {v0}, Lteam/opay/spos/base/common/PinInputFullFragment;->V(Lteam/opay/spos/base/common/PinInputFullFragment;)Lei2;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v0, v0, Lei2;->c:Lteam/opay/core/widget/FixCodeInputField;

    .line 86
    .line 87
    invoke-virtual {v0}, Lteam/opay/core/widget/FixCodeInputField;->getEditText()Landroidx/appcompat/widget/AppCompatEditText;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_0
    iget-object p1, p0, Lteam/opay/spos/base/common/PinInputFullFragment$KeyboardListener;->a:Lteam/opay/spos/base/common/PinInputFullFragment;

    .line 103
    .line 104
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseDialogFragment;->dismiss()V

    .line 105
    .line 106
    .line 107
    :cond_1
    return-void
.end method
