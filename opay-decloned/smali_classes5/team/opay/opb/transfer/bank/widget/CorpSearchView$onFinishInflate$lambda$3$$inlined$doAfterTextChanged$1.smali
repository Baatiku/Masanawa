.class public final Lteam/opay/opb/transfer/bank/widget/CorpSearchView$onFinishInflate$lambda$3$$inlined$doAfterTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/transfer/bank/widget/CorpSearchView;->onFinishInflate()V
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
.field public final synthetic a:Lteam/opay/opb/transfer/bank/widget/CorpSearchView;


# direct methods
.method public constructor <init>(Lteam/opay/opb/transfer/bank/widget/CorpSearchView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/widget/CorpSearchView$onFinishInflate$lambda$3$$inlined$doAfterTextChanged$1;->a:Lteam/opay/opb/transfer/bank/widget/CorpSearchView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lteam/opay/opb/transfer/bank/widget/CorpSearchView$onFinishInflate$lambda$3$$inlined$doAfterTextChanged$1;->a:Lteam/opay/opb/transfer/bank/widget/CorpSearchView;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/opb/transfer/bank/widget/CorpSearchView;->c(Lteam/opay/opb/transfer/bank/widget/CorpSearchView;)Ldk0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Ldk0;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    const-string v0, "clearIcon"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/widget/CorpSearchView$onFinishInflate$lambda$3$$inlined$doAfterTextChanged$1;->a:Lteam/opay/opb/transfer/bank/widget/CorpSearchView;

    .line 15
    .line 16
    invoke-static {v0}, Lteam/opay/opb/transfer/bank/widget/CorpSearchView;->e(Lteam/opay/opb/transfer/bank/widget/CorpSearchView;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    :goto_1
    xor-int/2addr v0, v1

    .line 34
    invoke-static {p1, v0}, Lg0g;->j(Landroid/view/View;Z)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lteam/opay/opb/transfer/bank/widget/CorpSearchView$onFinishInflate$lambda$3$$inlined$doAfterTextChanged$1;->a:Lteam/opay/opb/transfer/bank/widget/CorpSearchView;

    .line 38
    .line 39
    invoke-static {p1}, Lteam/opay/opb/transfer/bank/widget/CorpSearchView;->d(Lteam/opay/opb/transfer/bank/widget/CorpSearchView;)Landroidx/appcompat/widget/SearchView$m;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/widget/CorpSearchView$onFinishInflate$lambda$3$$inlined$doAfterTextChanged$1;->a:Lteam/opay/opb/transfer/bank/widget/CorpSearchView;

    .line 46
    .line 47
    invoke-static {v0}, Lteam/opay/opb/transfer/bank/widget/CorpSearchView;->e(Lteam/opay/opb/transfer/bank/widget/CorpSearchView;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {p1, v0}, Landroidx/appcompat/widget/SearchView$m;->a(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    :cond_2
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
