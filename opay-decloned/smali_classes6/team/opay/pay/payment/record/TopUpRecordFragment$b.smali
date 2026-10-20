.class public final Lteam/opay/pay/payment/record/TopUpRecordFragment$b;
.super Ljava/lang/Object;
.source "TopUpRecordFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/record/TopUpRecordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "team/opay/pay/payment/record/TopUpRecordFragment$b",
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
.field public final synthetic a:Lteam/opay/pay/payment/record/TopUpRecordFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/record/TopUpRecordFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/record/TopUpRecordFragment$b;->a:Lteam/opay/pay/payment/record/TopUpRecordFragment;

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
    .locals 8

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, p2

    .line 10
    :goto_0
    if-eqz p1, :cond_7

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    if-nez p3, :cond_1

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object p4, p0, Lteam/opay/pay/payment/record/TopUpRecordFragment$b;->a:Lteam/opay/pay/payment/record/TopUpRecordFragment;

    .line 26
    .line 27
    invoke-static {p4}, Lteam/opay/pay/payment/record/TopUpRecordFragment;->W(Lteam/opay/pay/payment/record/TopUpRecordFragment;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    :cond_2
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_6

    .line 40
    .line 41
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lteam/opay/pay/payment/record/TopUpRecord;

    .line 46
    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/payment/record/TopUpRecord;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x1

    .line 52
    const/4 v3, 0x2

    .line 53
    const/4 v4, 0x0

    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    invoke-virtual {v0}, Lteam/opay/pay/payment/record/TopUpRecord;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const-string v6, "getDefault(...)"

    .line 72
    .line 73
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v5, "toLowerCase(...)"

    .line 81
    .line 82
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v6, v4, v3, p2}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    goto :goto_3

    .line 107
    :cond_4
    :goto_2
    const/4 v1, 0x0

    .line 108
    :goto_3
    invoke-virtual {v0}, Lteam/opay/pay/payment/record/TopUpRecord;->b()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-eqz v5, :cond_5

    .line 113
    .line 114
    invoke-static {v5, p1, v4, v3, p2}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-ne v3, v2, :cond_5

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_5
    if-eqz v1, :cond_2

    .line 122
    .line 123
    :goto_4
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    iget-object p1, p0, Lteam/opay/pay/payment/record/TopUpRecordFragment$b;->a:Lteam/opay/pay/payment/record/TopUpRecordFragment;

    .line 128
    .line 129
    invoke-static {p1}, Lteam/opay/pay/payment/record/TopUpRecordFragment;->X(Lteam/opay/pay/payment/record/TopUpRecordFragment;)Lteam/opay/pay/payment/record/TopUpRecordAdapter;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_8

    .line 134
    .line 135
    invoke-virtual {p1, p3}, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->x(Ljava/util/List;)V

    .line 136
    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_7
    :goto_5
    iget-object p1, p0, Lteam/opay/pay/payment/record/TopUpRecordFragment$b;->a:Lteam/opay/pay/payment/record/TopUpRecordFragment;

    .line 140
    .line 141
    invoke-static {p1}, Lteam/opay/pay/payment/record/TopUpRecordFragment;->X(Lteam/opay/pay/payment/record/TopUpRecordFragment;)Lteam/opay/pay/payment/record/TopUpRecordAdapter;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-eqz p1, :cond_8

    .line 146
    .line 147
    iget-object p2, p0, Lteam/opay/pay/payment/record/TopUpRecordFragment$b;->a:Lteam/opay/pay/payment/record/TopUpRecordFragment;

    .line 148
    .line 149
    invoke-static {p2}, Lteam/opay/pay/payment/record/TopUpRecordFragment;->W(Lteam/opay/pay/payment/record/TopUpRecordFragment;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->x(Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    :cond_8
    :goto_6
    return-void
.end method
