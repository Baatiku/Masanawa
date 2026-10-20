.class public final Lteam/opay/pay/home/tabs/BankListAdapter$setBanks$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/tabs/BankListAdapter;->z(Lteam/opay/pay/api/UserBanksMate;Ljava/util/List;Ljr2;)Ljava/lang/Object;
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
        "Ljava/util/Comparator;"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lteam/opay/pay/home/tabs/BankInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankInfo;->getCode()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v3, 0x3

    .line 14
    const-string v4, "011"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    const-string v6, "033"

    .line 18
    .line 19
    const/4 v7, 0x6

    .line 20
    const-string v8, "035"

    .line 21
    .line 22
    const/4 v9, 0x1

    .line 23
    const-string v10, "044"

    .line 24
    .line 25
    const/4 v11, 0x5

    .line 26
    const-string v12, "057"

    .line 27
    .line 28
    const/4 v13, 0x4

    .line 29
    const-string v14, "058"

    .line 30
    .line 31
    const/4 v15, 0x0

    .line 32
    const-string v2, "305"

    .line 33
    .line 34
    sparse-switch v1, :sswitch_data_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    goto :goto_1

    .line 46
    :sswitch_1
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x4

    .line 54
    goto :goto_1

    .line 55
    :sswitch_2
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x5

    .line 63
    goto :goto_1

    .line 64
    :sswitch_3
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v0, 0x1

    .line 72
    goto :goto_1

    .line 73
    :sswitch_4
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    const/4 v0, 0x6

    .line 81
    goto :goto_1

    .line 82
    :sswitch_5
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    const/4 v0, 0x2

    .line 90
    goto :goto_1

    .line 91
    :sswitch_6
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_6

    .line 96
    .line 97
    :cond_5
    :goto_0
    const/16 v0, 0x64

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    const/4 v0, 0x3

    .line 101
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    move-object/from16 v1, p2

    .line 106
    .line 107
    check-cast v1, Lteam/opay/pay/home/tabs/BankInfo;

    .line 108
    .line 109
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/BankInfo;->getCode()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 114
    .line 115
    .line 116
    move-result v16

    .line 117
    sparse-switch v16, :sswitch_data_1

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :sswitch_7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_c

    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    goto :goto_3

    .line 129
    :sswitch_8
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_7

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_7
    const/4 v2, 0x4

    .line 137
    goto :goto_3

    .line 138
    :sswitch_9
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_8

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_8
    const/4 v2, 0x5

    .line 146
    goto :goto_3

    .line 147
    :sswitch_a
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-nez v1, :cond_9

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_9
    const/4 v2, 0x1

    .line 155
    goto :goto_3

    .line 156
    :sswitch_b
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_a

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_a
    const/4 v2, 0x6

    .line 164
    goto :goto_3

    .line 165
    :sswitch_c
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_b

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_b
    const/4 v2, 0x2

    .line 173
    goto :goto_3

    .line 174
    :sswitch_d
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_d

    .line 179
    .line 180
    :cond_c
    :goto_2
    const/16 v2, 0x64

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_d
    const/4 v2, 0x3

    .line 184
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {v0, v1}, Lkotlin/comparisons/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    return v0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0xba50 -> :sswitch_6
        0xba90 -> :sswitch_5
        0xba92 -> :sswitch_4
        0xbab0 -> :sswitch_3
        0xbad2 -> :sswitch_2
        0xbad3 -> :sswitch_1
        0xc578 -> :sswitch_0
    .end sparse-switch

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    :sswitch_data_1
    .sparse-switch
        0xba50 -> :sswitch_d
        0xba90 -> :sswitch_c
        0xba92 -> :sswitch_b
        0xbab0 -> :sswitch_a
        0xbad2 -> :sswitch_9
        0xbad3 -> :sswitch_8
        0xc578 -> :sswitch_7
    .end sparse-switch
.end method
