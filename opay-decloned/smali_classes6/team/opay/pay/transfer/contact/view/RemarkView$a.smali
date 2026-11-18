.class public final Lteam/opay/pay/transfer/contact/view/RemarkView$a;
.super Ljava/lang/Object;
.source "RemarkView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/view/RemarkView;->l(Landroid/widget/EditText;)V
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
        "team/opay/pay/transfer/contact/view/RemarkView$a",
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
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Lteam/opay/pay/transfer/contact/view/RemarkView;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lteam/opay/pay/transfer/contact/view/RemarkView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/view/RemarkView$a;->a:Landroid/widget/EditText;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/view/RemarkView$a;->b:Lteam/opay/pay/transfer/contact/view/RemarkView;

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

    .line 1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p3, 0x0

    .line 10
    :goto_0
    const/16 p4, 0x32

    .line 11
    .line 12
    if-le p3, p4, :cond_2

    .line 13
    .line 14
    iget-object p3, p0, Lteam/opay/pay/transfer/contact/view/RemarkView$a;->a:Landroid/widget/EditText;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p4, "substring(...)"

    .line 29
    .line 30
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/RemarkView$a;->a:Landroid/widget/EditText;

    .line 39
    .line 40
    invoke-static {p1}, Lpf5;->b(Landroid/widget/EditText;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/RemarkView$a;->b:Lteam/opay/pay/transfer/contact/view/RemarkView;

    .line 44
    .line 45
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/view/RemarkView;->h(Lteam/opay/pay/transfer/contact/view/RemarkView;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/RemarkView$a;->b:Lteam/opay/pay/transfer/contact/view/RemarkView;

    .line 52
    .line 53
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/view/RemarkView;->f(Lteam/opay/pay/transfer/contact/view/RemarkView;)Lteam/opay/pay/transfer/contact/view/AudltRemarkViewAdapter;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/RemarkView$a;->b:Lteam/opay/pay/transfer/contact/view/RemarkView;

    .line 60
    .line 61
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/view/RemarkView;->f(Lteam/opay/pay/transfer/contact/view/RemarkView;)Lteam/opay/pay/transfer/contact/view/AudltRemarkViewAdapter;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/view/AudltRemarkViewAdapter;->l()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const/4 p3, -0x1

    .line 73
    if-eq p1, p3, :cond_3

    .line 74
    .line 75
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/RemarkView$a;->b:Lteam/opay/pay/transfer/contact/view/RemarkView;

    .line 76
    .line 77
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/view/RemarkView;->f(Lteam/opay/pay/transfer/contact/view/RemarkView;)Lteam/opay/pay/transfer/contact/view/AudltRemarkViewAdapter;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p3}, Lteam/opay/pay/transfer/contact/view/AudltRemarkViewAdapter;->m(I)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/RemarkView$a;->b:Lteam/opay/pay/transfer/contact/view/RemarkView;

    .line 88
    .line 89
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/view/RemarkView;->f(Lteam/opay/pay/transfer/contact/view/RemarkView;)Lteam/opay/pay/transfer/contact/view/AudltRemarkViewAdapter;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 97
    .line 98
    .line 99
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/RemarkView$a;->b:Lteam/opay/pay/transfer/contact/view/RemarkView;

    .line 100
    .line 101
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/view/RemarkView;->h(Lteam/opay/pay/transfer/contact/view/RemarkView;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/RemarkView$a;->b:Lteam/opay/pay/transfer/contact/view/RemarkView;

    .line 108
    .line 109
    invoke-static {p1, p2}, Lteam/opay/pay/transfer/contact/view/RemarkView;->j(Lteam/opay/pay/transfer/contact/view/RemarkView;Z)V

    .line 110
    .line 111
    .line 112
    :cond_4
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/RemarkView$a;->b:Lteam/opay/pay/transfer/contact/view/RemarkView;

    .line 113
    .line 114
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/view/RemarkView;->i(Lteam/opay/pay/transfer/contact/view/RemarkView;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_5

    .line 119
    .line 120
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/RemarkView$a;->b:Lteam/opay/pay/transfer/contact/view/RemarkView;

    .line 121
    .line 122
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/view/RemarkView;->g(Lteam/opay/pay/transfer/contact/view/RemarkView;)Lkotlin/jvm/functions/Function1;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    iget-object p2, p0, Lteam/opay/pay/transfer/contact/view/RemarkView$a;->a:Landroid/widget/EditText;

    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    :cond_5
    return-void
.end method
