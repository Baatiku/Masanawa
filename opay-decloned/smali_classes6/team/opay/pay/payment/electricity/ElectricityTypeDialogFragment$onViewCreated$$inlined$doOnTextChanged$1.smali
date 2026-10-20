.class public final Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$onViewCreated$$inlined$doOnTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
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
        "androidx/core/widget/TextViewKt$doOnTextChanged$$inlined$addTextChangedListener$1"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;

.field public final synthetic b:Lteam/opay/pay/payment/electricity/ElectricityTypeAdapter;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;Lteam/opay/pay/payment/electricity/ElectricityTypeAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$onViewCreated$$inlined$doOnTextChanged$1;->a:Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$onViewCreated$$inlined$doOnTextChanged$1;->b:Lteam/opay/pay/payment/electricity/ElectricityTypeAdapter;

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
    .locals 0
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
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
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$onViewCreated$$inlined$doOnTextChanged$1;->a:Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;

    .line 7
    .line 8
    invoke-virtual {p3}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    check-cast p3, Lji6;

    .line 13
    .line 14
    iget-object p3, p3, Lji6;->g:Llef;

    .line 15
    .line 16
    iget-object p3, p3, Llef;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 17
    .line 18
    const-string p4, "icClose"

    .line 19
    .line 20
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p4, 0x0

    .line 24
    const/4 v0, 0x1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 37
    :goto_1
    xor-int/2addr v1, v0

    .line 38
    invoke-static {p3, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 39
    .line 40
    .line 41
    if-eqz p1, :cond_6

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-nez p3, :cond_2

    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_2
    iget-object p3, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$onViewCreated$$inlined$doOnTextChanged$1;->a:Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;

    .line 51
    .line 52
    invoke-virtual {p3}, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->S()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    :cond_3
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    move-object v3, v2

    .line 76
    check-cast v3, Lteam/opay/pay/payment/electricity/ElectricityProviderV3;

    .line 77
    .line 78
    invoke-virtual {v3}, Lteam/opay/pay/payment/electricity/ElectricityProviderV3;->c()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    invoke-static {v3, p1, v0}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    const/4 v3, 0x0

    .line 90
    :goto_3
    if-eqz v3, :cond_3

    .line 91
    .line 92
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_6
    :goto_4
    iget-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$onViewCreated$$inlined$doOnTextChanged$1;->a:Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;

    .line 101
    .line 102
    invoke-virtual {p1}, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->S()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    :goto_5
    iget-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$onViewCreated$$inlined$doOnTextChanged$1;->b:Lteam/opay/pay/payment/electricity/ElectricityTypeAdapter;

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$onViewCreated$$inlined$doOnTextChanged$1;->a:Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;

    .line 115
    .line 116
    invoke-virtual {p1}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Lji6;

    .line 121
    .line 122
    iget-object p1, p1, Lji6;->f:Lmef;

    .line 123
    .line 124
    invoke-virtual {p1}, Lmef;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string p3, "getRoot(...)"

    .line 129
    .line 130
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 138
    .line 139
    .line 140
    return-void
.end method
