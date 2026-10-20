.class public final Lteam/opay/pay/transfer/contact/view/BaseContactFragment$b;
.super Lteam/opay/core/android/views/SafeDelayedTextWatcher;
.source "BaseContactFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/pay/transfer/contact/view/BaseContactFragment$b",
        "Lteam/opay/core/android/views/SafeDelayedTextWatcher;",
        "Landroid/text/Editable;",
        "s",
        "",
        "b",
        "(Landroid/text/Editable;)V",
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
.field public final synthetic e:Lteam/opay/pay/transfer/contact/view/BaseContactFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$b;->e:Lteam/opay/pay/transfer/contact/view/BaseContactFragment;

    .line 2
    .line 3
    const-wide/16 v0, 0x12c

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1}, Lteam/opay/core/android/views/SafeDelayedTextWatcher;-><init>(Lag8;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Landroid/text/Editable;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$b;->e:Lteam/opay/pay/transfer/contact/view/BaseContactFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_c

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$b;->e:Lteam/opay/pay/transfer/contact/view/BaseContactFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_c

    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$b;->e:Lteam/opay/pay/transfer/contact/view/BaseContactFragment;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_7

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$b;->e:Lteam/opay/pay/transfer/contact/view/BaseContactFragment;

    .line 28
    .line 29
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lmi6;

    .line 34
    .line 35
    iget-object v0, v0, Lmi6;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v2, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 52
    :goto_1
    xor-int/2addr v2, v1

    .line 53
    invoke-static {v0, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 54
    .line 55
    .line 56
    :cond_3
    const/4 v0, 0x0

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/text/StringsKt;->t1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-static {v2}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    move-object v2, v0

    .line 71
    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_5

    .line 80
    .line 81
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$b;->e:Lteam/opay/pay/transfer/contact/view/BaseContactFragment;

    .line 82
    .line 83
    invoke-static {v1}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->W(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;)Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    goto :goto_5

    .line 88
    :cond_5
    iget-object v3, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$b;->e:Lteam/opay/pay/transfer/contact/view/BaseContactFragment;

    .line 89
    .line 90
    invoke-static {v3}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->W(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;)Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_9

    .line 108
    .line 109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    move-object v6, v5

    .line 114
    check-cast v6, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 115
    .line 116
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    if-eqz v7, :cond_7

    .line 121
    .line 122
    invoke-static {v7, v2, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-ne v7, v1, :cond_7

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_7
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    if-nez v6, :cond_8

    .line 134
    .line 135
    const-string v6, ""

    .line 136
    .line 137
    :cond_8
    invoke-static {v6}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-static {v2}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-static {v6, v7, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_6

    .line 150
    .line 151
    :goto_4
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_9
    move-object v1, v4

    .line 156
    :goto_5
    if-eqz p1, :cond_b

    .line 157
    .line 158
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_a

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_a
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$b;->e:Lteam/opay/pay/transfer/contact/view/BaseContactFragment;

    .line 166
    .line 167
    invoke-static {p1, v1}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->Z(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Ljava/util/List;)V

    .line 168
    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_b
    :goto_6
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$b;->e:Lteam/opay/pay/transfer/contact/view/BaseContactFragment;

    .line 172
    .line 173
    invoke-virtual {p1, v1, v0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->B0(Ljava/util/List;Ljava/util/HashMap;)V

    .line 174
    .line 175
    .line 176
    :cond_c
    :goto_7
    return-void
.end method
