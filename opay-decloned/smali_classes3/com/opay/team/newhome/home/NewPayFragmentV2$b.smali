.class public final Lcom/opay/team/newhome/home/NewPayFragmentV2$b;
.super Ljava/lang/Object;
.source "NewPayFragmentV2.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/home/NewPayFragmentV2;->addObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/opay/team/newhome/home/NewPayFragmentV2;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/home/NewPayFragmentV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/home/websocket/WsAdData;Ljr2;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/websocket/WsAdData;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/home/websocket/WsAdData;->getAd_position_code()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_8

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const-string v0, "requireContext(...)"

    .line 12
    .line 13
    const-string v1, "getViewLifecycleOwner(...)"

    .line 14
    .line 15
    sparse-switch p2, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :sswitch_0
    const-string p2, "floating_window_ad"

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 37
    .line 38
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2, v1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->W(Lag8;Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :sswitch_1
    const-string p2, "banner_ad_second"

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_1
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 76
    .line 77
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2, v1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->W(Lag8;Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :sswitch_2
    const-string p2, "banner_ad_third"

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_2

    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_2
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object p2, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 115
    .line 116
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 124
    .line 125
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2, v1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->W(Lag8;Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :sswitch_3
    const-string p2, "banner_ad_task"

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_3

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 146
    .line 147
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object p2, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 152
    .line 153
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 161
    .line 162
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p2, v1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->W(Lag8;Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :sswitch_4
    const-string p2, "ng_home_notice_first"

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_4

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 183
    .line 184
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getMainViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lteam/opay/pay/home/MainViewModel;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lteam/opay/pay/home/MainViewModel;->J1()V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :sswitch_5
    const-string p2, "interstitial_ad"

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-nez p1, :cond_5

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_5
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 202
    .line 203
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getMainViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lteam/opay/pay/home/MainViewModel;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 208
    .line 209
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    instance-of p2, p1, Lteam/opay/pay/home/MainActivity;

    .line 214
    .line 215
    if-eqz p2, :cond_6

    .line 216
    .line 217
    check-cast p1, Lteam/opay/pay/home/MainActivity;

    .line 218
    .line 219
    :goto_0
    move-object v2, p1

    .line 220
    goto :goto_1

    .line 221
    :cond_6
    const/4 p1, 0x0

    .line 222
    goto :goto_0

    .line 223
    :goto_1
    if-nez v2, :cond_7

    .line 224
    .line 225
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 226
    .line 227
    return-object p1

    .line 228
    :cond_7
    const/4 v4, 0x4

    .line 229
    const/4 v5, 0x0

    .line 230
    const-string v1, "interstitial_ad"

    .line 231
    .line 232
    const/4 v3, 0x0

    .line 233
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/home/MainViewModel;->q0(Lteam/opay/pay/home/MainViewModel;Ljava/lang/String;Lteam/opay/pay/home/MainActivity;ZILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 237
    .line 238
    return-object p1

    .line 239
    :sswitch_data_0
    .sparse-switch
        -0x750355ea -> :sswitch_5
        -0x404bc31d -> :sswitch_4
        -0x3184c5f2 -> :sswitch_3
        0xef11fe -> :sswitch_2
        0x1b114abd -> :sswitch_1
        0x311401d9 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/home/websocket/WsAdData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2$b;->c(Lteam/opay/pay/home/websocket/WsAdData;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
