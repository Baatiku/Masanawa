.class public final Lteam/opay/business/widget/keyboard/KeyBoardHelper$a;
.super Ljava/lang/Object;
.source "KeyBoardHelper.kt"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/widget/keyboard/KeyBoardHelper;-><init>(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "team/opay/business/widget/keyboard/KeyBoardHelper$a",
        "Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;",
        "",
        "swipeUp",
        "()V",
        "swipeRight",
        "swipeLeft",
        "swipeDown",
        "",
        "text",
        "onText",
        "(Ljava/lang/CharSequence;)V",
        "",
        "primaryCode",
        "onRelease",
        "(I)V",
        "onPress",
        "",
        "keyCodes",
        "onKey",
        "(I[I)V",
        "business-widget_release"
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
.field public final synthetic a:Lteam/opay/business/widget/keyboard/KeyBoardHelper;


# direct methods
.method public constructor <init>(Lteam/opay/business/widget/keyboard/KeyBoardHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/widget/keyboard/KeyBoardHelper$a;->a:Lteam/opay/business/widget/keyboard/KeyBoardHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 2

    .line 1
    const-string v0, "keyCodes"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lteam/opay/business/widget/keyboard/KeyBoardHelper$a;->a:Lteam/opay/business/widget/keyboard/KeyBoardHelper;

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/business/widget/keyboard/KeyBoardHelper;->a()Landroid/widget/EditText;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object v0, p0, Lteam/opay/business/widget/keyboard/KeyBoardHelper$a;->a:Lteam/opay/business/widget/keyboard/KeyBoardHelper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/business/widget/keyboard/KeyBoardHelper;->a()Landroid/widget/EditText;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/16 v1, -0xa

    .line 27
    .line 28
    if-eq p1, v1, :cond_2

    .line 29
    .line 30
    const/4 v1, -0x5

    .line 31
    if-eq p1, v1, :cond_1

    .line 32
    .line 33
    const/4 v1, -0x3

    .line 34
    if-eq p1, v1, :cond_0

    .line 35
    .line 36
    int-to-char p1, p1

    .line 37
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-lez v1, :cond_2

    .line 46
    .line 47
    invoke-interface {p2, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lteam/opay/business/widget/keyboard/KeyBoardHelper$a;->a:Lteam/opay/business/widget/keyboard/KeyBoardHelper;

    .line 52
    .line 53
    invoke-virtual {p1}, Lteam/opay/business/widget/keyboard/KeyBoardHelper;->b()Landroid/inputmethodservice/KeyboardView;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/16 p2, 0x8

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    if-eqz p2, :cond_2

    .line 64
    .line 65
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-lez p1, :cond_2

    .line 70
    .line 71
    if-lez v0, :cond_2

    .line 72
    .line 73
    add-int/lit8 p1, v0, -0x1

    .line 74
    .line 75
    invoke-interface {p2, p1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_0
    return-void
.end method

.method public onPress(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRelease(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .line 1
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .line 1
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .line 1
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .line 1
    return-void
.end method
