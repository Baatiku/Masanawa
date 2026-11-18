.class public final Lteam/opay/pay/transaction/HistoryFilter;
.super Ljava/lang/Object;
.source "HistoryFilter.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;,
        Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;,
        Lteam/opay/pay/transaction/HistoryFilter$Filter;,
        Lteam/opay/pay/transaction/HistoryFilter$FilterAdapter;,
        Lteam/opay/pay/transaction/HistoryFilter$FilterItem;,
        Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;,
        Lteam/opay/pay/transaction/HistoryFilter$Period;,
        Lteam/opay/pay/transaction/HistoryFilter$PeriodFilterItem;,
        Lteam/opay/pay/transaction/HistoryFilter$Status;,
        Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\n<=>?@ABCDEB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ-\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\tH\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u001a\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010)\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R*\u00101\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010*8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001e\u00105\u001a\n 3*\u0004\u0018\u000102028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u00104R\u0017\u0010;\u001a\u0002068\u0006\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\u00a8\u0006F"
    }
    d2 = {
        "Lteam/opay/pay/transaction/HistoryFilter;",
        "",
        "<init>",
        "()V",
        "Landroid/app/Activity;",
        "activity",
        "",
        "Lteam/opay/pay/transaction/FilterTypeInfo;",
        "serviceTypes",
        "Lteam/opay/pay/transaction/TransactionViewModel;",
        "viewModel",
        "",
        "n",
        "(Landroid/app/Activity;Ljava/util/List;Lteam/opay/pay/transaction/TransactionViewModel;)V",
        "q",
        "(Landroid/app/Activity;Lteam/opay/pay/transaction/TransactionViewModel;)V",
        "Ljava/util/Date;",
        "date",
        "",
        "isStart",
        "",
        "l",
        "(Ljava/util/Date;Z)J",
        "Landroid/widget/PopupWindow;",
        "filtersPopup",
        "o",
        "(Landroid/app/Activity;Landroid/widget/PopupWindow;)V",
        "f",
        "(Landroid/app/Activity;Ljava/util/List;Lteam/opay/pay/transaction/TransactionViewModel;)Landroid/widget/PopupWindow;",
        "i",
        "(Landroid/app/Activity;Lteam/opay/pay/transaction/TransactionViewModel;)Landroid/widget/PopupWindow;",
        "",
        "Lteam/opay/pay/transaction/HistoryFilter$Status;",
        "b",
        "[Lteam/opay/pay/transaction/HistoryFilter$Status;",
        "statusOrder",
        "c",
        "Ljava/util/List;",
        "defaultServices",
        "d",
        "Z",
        "popupOpened",
        "Lkotlin/Function0;",
        "e",
        "Lkotlin/jvm/functions/Function0;",
        "getOnDismissListener",
        "()Lkotlin/jvm/functions/Function0;",
        "m",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onDismissListener",
        "Ljava/util/Calendar;",
        "kotlin.jvm.PlatformType",
        "Ljava/util/Calendar;",
        "calendar",
        "Lteam/opay/pay/transaction/HistoryFilter$Filter;",
        "g",
        "Lteam/opay/pay/transaction/HistoryFilter$Filter;",
        "k",
        "()Lteam/opay/pay/transaction/HistoryFilter$Filter;",
        "NO_FILTER",
        "Status",
        "Period",
        "Filter",
        "FilterItem",
        "StatusFilterItem",
        "CategoryFilterItem",
        "PeriodFilterItem",
        "CustomPeriodFilterItem",
        "FilterViewHolder",
        "FilterAdapter",
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


# static fields
.field public static final a:Lteam/opay/pay/transaction/HistoryFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:[Lteam/opay/pay/transaction/HistoryFilter$Status;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transaction/FilterTypeInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static d:Z

.field public static e:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static f:Ljava/util/Calendar;

.field public static final g:Lteam/opay/pay/transaction/HistoryFilter$Filter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 1
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/transaction/HistoryFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter;->a:Lteam/opay/pay/transaction/HistoryFilter;

    .line 7
    .line 8
    const/4 v0, 0x6

    .line 9
    new-array v1, v0, [Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 10
    .line 11
    sget-object v2, Lteam/opay/pay/transaction/HistoryFilter$Status;->ANY:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 15
    .line 16
    sget-object v2, Lteam/opay/pay/transaction/HistoryFilter$Status;->SUCCESSFUL:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    aput-object v2, v1, v4

    .line 20
    .line 21
    sget-object v2, Lteam/opay/pay/transaction/HistoryFilter$Status;->PENDING:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    aput-object v2, v1, v5

    .line 25
    .line 26
    sget-object v2, Lteam/opay/pay/transaction/HistoryFilter$Status;->EXPIRED:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 27
    .line 28
    const/4 v6, 0x3

    .line 29
    aput-object v2, v1, v6

    .line 30
    .line 31
    sget-object v2, Lteam/opay/pay/transaction/HistoryFilter$Status;->TOBEPAY:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 32
    .line 33
    const/4 v7, 0x4

    .line 34
    aput-object v2, v1, v7

    .line 35
    .line 36
    sget-object v2, Lteam/opay/pay/transaction/HistoryFilter$Status;->REVERSED:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 37
    .line 38
    const/4 v8, 0x5

    .line 39
    aput-object v2, v1, v8

    .line 40
    .line 41
    sput-object v1, Lteam/opay/pay/transaction/HistoryFilter;->b:[Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 42
    .line 43
    new-instance v1, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 44
    .line 45
    const/4 v13, 0x4

    .line 46
    const/4 v14, 0x0

    .line 47
    const-string v10, "airtime"

    .line 48
    .line 49
    const-string v11, "Airtime"

    .line 50
    .line 51
    const/4 v12, 0x0

    .line 52
    move-object v9, v1

    .line 53
    invoke-direct/range {v9 .. v14}, Lteam/opay/pay/transaction/FilterTypeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transaction/CategoryType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 57
    .line 58
    const/16 v19, 0x4

    .line 59
    .line 60
    const/16 v20, 0x0

    .line 61
    .line 62
    const-string v16, "receiverMoney"

    .line 63
    .line 64
    const-string v17, "Bank deposit"

    .line 65
    .line 66
    const/16 v18, 0x0

    .line 67
    .line 68
    move-object v15, v2

    .line 69
    invoke-direct/range {v15 .. v20}, Lteam/opay/pay/transaction/FilterTypeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transaction/CategoryType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 70
    .line 71
    .line 72
    new-instance v15, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 73
    .line 74
    const-string v10, "coinsTransferReceived"

    .line 75
    .line 76
    const-string v11, "Money received"

    .line 77
    .line 78
    move-object v9, v15

    .line 79
    invoke-direct/range {v9 .. v14}, Lteam/opay/pay/transaction/FilterTypeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transaction/CategoryType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 80
    .line 81
    .line 82
    new-instance v9, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 83
    .line 84
    const/16 v20, 0x4

    .line 85
    .line 86
    const/16 v21, 0x0

    .line 87
    .line 88
    const-string v17, "coinsTransferSent"

    .line 89
    .line 90
    const-string v18, "Money sent"

    .line 91
    .line 92
    const/16 v19, 0x0

    .line 93
    .line 94
    move-object/from16 v16, v9

    .line 95
    .line 96
    invoke-direct/range {v16 .. v21}, Lteam/opay/pay/transaction/FilterTypeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transaction/CategoryType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    .line 98
    .line 99
    new-instance v10, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 100
    .line 101
    const/16 v26, 0x4

    .line 102
    .line 103
    const/16 v27, 0x0

    .line 104
    .line 105
    const-string v23, "transaction"

    .line 106
    .line 107
    const-string v24, "ORide"

    .line 108
    .line 109
    const/16 v25, 0x0

    .line 110
    .line 111
    move-object/from16 v22, v10

    .line 112
    .line 113
    invoke-direct/range {v22 .. v27}, Lteam/opay/pay/transaction/FilterTypeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transaction/CategoryType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    .line 115
    .line 116
    new-instance v11, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 117
    .line 118
    const-string v17, "coin"

    .line 119
    .line 120
    const-string v18, "Top-up"

    .line 121
    .line 122
    move-object/from16 v16, v11

    .line 123
    .line 124
    invoke-direct/range {v16 .. v21}, Lteam/opay/pay/transaction/FilterTypeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transaction/CategoryType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    .line 126
    .line 127
    new-instance v12, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 128
    .line 129
    const-string v23, "bank"

    .line 130
    .line 131
    const-string v24, "Transfer to Bank"

    .line 132
    .line 133
    move-object/from16 v22, v12

    .line 134
    .line 135
    invoke-direct/range {v22 .. v27}, Lteam/opay/pay/transaction/FilterTypeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transaction/CategoryType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 136
    .line 137
    .line 138
    new-instance v13, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 139
    .line 140
    const-string v17, "betting"

    .line 141
    .line 142
    const-string v18, "Betting"

    .line 143
    .line 144
    move-object/from16 v16, v13

    .line 145
    .line 146
    invoke-direct/range {v16 .. v21}, Lteam/opay/pay/transaction/FilterTypeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transaction/CategoryType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    .line 148
    .line 149
    new-instance v14, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 150
    .line 151
    const-string v23, "invest"

    .line 152
    .line 153
    const-string v24, "Invest"

    .line 154
    .line 155
    move-object/from16 v22, v14

    .line 156
    .line 157
    invoke-direct/range {v22 .. v27}, Lteam/opay/pay/transaction/FilterTypeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transaction/CategoryType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 158
    .line 159
    .line 160
    new-instance v22, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 161
    .line 162
    const-string/jumbo v17, "withDrawal"

    .line 163
    .line 164
    .line 165
    const-string/jumbo v18, "withDrawal"

    .line 166
    .line 167
    .line 168
    move-object/from16 v16, v22

    .line 169
    .line 170
    invoke-direct/range {v16 .. v21}, Lteam/opay/pay/transaction/FilterTypeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transaction/CategoryType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 171
    .line 172
    .line 173
    const/16 v0, 0xa

    .line 174
    .line 175
    new-array v0, v0, [Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 176
    .line 177
    aput-object v1, v0, v3

    .line 178
    .line 179
    aput-object v2, v0, v4

    .line 180
    .line 181
    aput-object v15, v0, v5

    .line 182
    .line 183
    aput-object v9, v0, v6

    .line 184
    .line 185
    aput-object v10, v0, v7

    .line 186
    .line 187
    aput-object v11, v0, v8

    .line 188
    .line 189
    const/4 v1, 0x6

    .line 190
    aput-object v12, v0, v1

    .line 191
    .line 192
    const/4 v1, 0x7

    .line 193
    aput-object v13, v0, v1

    .line 194
    .line 195
    const/16 v1, 0x8

    .line 196
    .line 197
    aput-object v14, v0, v1

    .line 198
    .line 199
    const/16 v1, 0x9

    .line 200
    .line 201
    aput-object v22, v0, v1

    .line 202
    .line 203
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter;->c:Ljava/util/List;

    .line 208
    .line 209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter;->f:Ljava/util/Calendar;

    .line 214
    .line 215
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 216
    .line 217
    const/16 v7, 0x1f

    .line 218
    .line 219
    const/4 v8, 0x0

    .line 220
    const/4 v2, 0x0

    .line 221
    const/4 v3, 0x0

    .line 222
    const/4 v4, 0x0

    .line 223
    const/4 v5, 0x0

    .line 224
    const/4 v6, 0x0

    .line 225
    move-object v1, v0

    .line 226
    invoke-direct/range {v1 .. v8}, Lteam/opay/pay/transaction/HistoryFilter$Filter;-><init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 227
    .line 228
    .line 229
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter;->g:Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 230
    .line 231
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/transaction/TransactionViewModel;Landroid/widget/PopupWindow;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transaction/HistoryFilter;->h(Lteam/opay/pay/transaction/TransactionViewModel;Landroid/widget/PopupWindow;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(ZLteam/opay/pay/transaction/TransactionViewModel;Ljava/util/List;ILandroid/widget/PopupWindow;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/transaction/HistoryFilter;->g(ZLteam/opay/pay/transaction/TransactionViewModel;Ljava/util/List;ILandroid/widget/PopupWindow;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transaction/HistoryFilter;->p(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(ZLteam/opay/pay/transaction/TransactionViewModel;ILandroid/widget/PopupWindow;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/transaction/HistoryFilter;->j(ZLteam/opay/pay/transaction/TransactionViewModel;ILandroid/widget/PopupWindow;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e()Ljava/util/Calendar;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/transaction/HistoryFilter;->f:Ljava/util/Calendar;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final g(ZLteam/opay/pay/transaction/TransactionViewModel;Ljava/util/List;ILandroid/widget/PopupWindow;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 4
    .line 5
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/pay/transaction/TransactionViewModel;->M()Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {p0, v0, v1}, Lteam/opay/pay/transaction/HistoryFilter$Filter;-><init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Filter;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lteam/opay/pay/transaction/TransactionViewModel;->k0(Lteam/opay/pay/transaction/HistoryFilter$Filter;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lx0f;->a:Lx0f;

    .line 25
    .line 26
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/pay/transaction/FilterTypeInfo;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "service_type"

    .line 37
    .line 38
    invoke-static {p2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 p2, 0x1

    .line 43
    new-array p2, p2, [Lkotlin/Pair;

    .line 44
    .line 45
    const/4 p3, 0x0

    .line 46
    aput-object p1, p2, p3

    .line 47
    .line 48
    const-string p1, "filter_category_click"

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lx0f;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 51
    .line 52
    .line 53
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method

.method public static final h(Lteam/opay/pay/transaction/TransactionViewModel;Landroid/widget/PopupWindow;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transaction/TransactionViewModel;->M()Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/transaction/HistoryFilter$Filter;->getCategory()Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/transaction/TransactionViewModel;->M()Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/transaction/HistoryFilter$Filter;->getCategory()Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lteam/opay/pay/transaction/FilterTypeInfo;->c()Lteam/opay/pay/transaction/CategoryType;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    sget-object v1, Lteam/opay/pay/transaction/CategoryType;->ALL:Lteam/opay/pay/transaction/CategoryType;

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 32
    .line 33
    new-instance v2, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 34
    .line 35
    const-string v3, ""

    .line 36
    .line 37
    invoke-direct {v2, v3, v3, v1}, Lteam/opay/pay/transaction/FilterTypeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transaction/CategoryType;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/pay/transaction/TransactionViewModel;->M()Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v2, v1}, Lteam/opay/pay/transaction/HistoryFilter$Filter;-><init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Filter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lteam/opay/pay/transaction/TransactionViewModel;->k0(Lteam/opay/pay/transaction/HistoryFilter$Filter;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 51
    .line 52
    .line 53
    sget-object p0, Lx0f;->a:Lx0f;

    .line 54
    .line 55
    const-string p1, "service_type"

    .line 56
    .line 57
    const-string v0, "all"

    .line 58
    .line 59
    invoke-static {p1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v1, "bill_type"

    .line 64
    .line 65
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v1, 0x2

    .line 70
    new-array v1, v1, [Lkotlin/Pair;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    aput-object p1, v1, v2

    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    aput-object v0, v1, p1

    .line 77
    .line 78
    const-string p1, "filter_category_click"

    .line 79
    .line 80
    invoke-virtual {p0, p1, v1}, Lx0f;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 81
    .line 82
    .line 83
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p0
.end method

.method public static final j(ZLteam/opay/pay/transaction/TransactionViewModel;ILandroid/widget/PopupWindow;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 4
    .line 5
    sget-object v0, Lteam/opay/pay/transaction/HistoryFilter;->b:[Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 6
    .line 7
    aget-object p2, v0, p2

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/pay/transaction/TransactionViewModel;->M()Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, p2, v0}, Lteam/opay/pay/transaction/HistoryFilter$Filter;-><init>(Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Filter;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lteam/opay/pay/transaction/TransactionViewModel;->k0(Lteam/opay/pay/transaction/HistoryFilter$Filter;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final p(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$id;->bottom_navigation_bar:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-static {p0}, Lkmf;->d(Landroid/view/ViewGroup;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    sget-object p0, Lteam/opay/pay/transaction/HistoryFilter;->e:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    sput-boolean p0, Lteam/opay/pay/transaction/HistoryFilter;->d:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final f(Landroid/app/Activity;Ljava/util/List;Lteam/opay/pay/transaction/TransactionViewModel;)Landroid/widget/PopupWindow;
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lteam/opay/pay/transaction/FilterTypeInfo;",
            ">;",
            "Lteam/opay/pay/transaction/TransactionViewModel;",
            ")",
            "Landroid/widget/PopupWindow;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v2, Lteam/opay/pay/R$layout;->category_filters_popup:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lh62;->bind(Landroid/view/View;)Lh62;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "bind(...)"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroid/widget/PopupWindow;

    .line 24
    .line 25
    invoke-virtual {v1}, Lh62;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v5, -0x1

    .line 30
    const/4 v6, -0x2

    .line 31
    invoke-direct {v2, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 32
    .line 33
    .line 34
    new-instance v10, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v11, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v4, Ljava/util/ArrayList;

    .line 45
    .line 46
    const/16 v5, 0xa

    .line 47
    .line 48
    move-object/from16 v6, p2

    .line 49
    .line 50
    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_0

    .line 66
    .line 67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 72
    .line 73
    sget-object v7, Lteam/opay/pay/transaction/CategoryType;->SERVICE:Lteam/opay/pay/transaction/CategoryType;

    .line 74
    .line 75
    invoke-virtual {v6, v7}, Lteam/opay/pay/transaction/FilterTypeInfo;->d(Lteam/opay/pay/transaction/CategoryType;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->T0(Ljava/util/Collection;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    const/4 v4, 0x0

    .line 91
    const/4 v15, 0x0

    .line 92
    :goto_1
    const/4 v5, 0x1

    .line 93
    if-ge v15, v13, :cond_5

    .line 94
    .line 95
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 100
    .line 101
    invoke-virtual {v6}, Lteam/opay/pay/transaction/FilterTypeInfo;->a()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/transaction/TransactionViewModel;->M()Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v7}, Lteam/opay/pay/transaction/HistoryFilter$Filter;->getCategory()Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    if-eqz v7, :cond_1

    .line 114
    .line 115
    invoke-virtual {v7}, Lteam/opay/pay/transaction/FilterTypeInfo;->a()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    goto :goto_2

    .line 120
    :cond_1
    move-object v7, v3

    .line 121
    :goto_2
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_3

    .line 126
    .line 127
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/transaction/TransactionViewModel;->M()Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v6}, Lteam/opay/pay/transaction/HistoryFilter$Filter;->getCategory()Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    if-eqz v6, :cond_2

    .line 136
    .line 137
    invoke-virtual {v6}, Lteam/opay/pay/transaction/FilterTypeInfo;->c()Lteam/opay/pay/transaction/CategoryType;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    goto :goto_3

    .line 142
    :cond_2
    move-object v6, v3

    .line 143
    :goto_3
    sget-object v7, Lteam/opay/pay/transaction/CategoryType;->SERVICE:Lteam/opay/pay/transaction/CategoryType;

    .line 144
    .line 145
    if-ne v6, v7, :cond_3

    .line 146
    .line 147
    const/4 v9, 0x1

    .line 148
    goto :goto_4

    .line 149
    :cond_3
    const/4 v9, 0x0

    .line 150
    :goto_4
    if-eqz v9, :cond_4

    .line 151
    .line 152
    const/16 v16, 0x1

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_4
    move/from16 v16, v4

    .line 156
    .line 157
    :goto_5
    new-instance v8, Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;

    .line 158
    .line 159
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    move-object v7, v4

    .line 164
    check-cast v7, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 165
    .line 166
    new-instance v6, Lix6;

    .line 167
    .line 168
    move-object v4, v6

    .line 169
    move v5, v9

    .line 170
    move-object v3, v6

    .line 171
    move-object/from16 v6, p3

    .line 172
    .line 173
    move-object v14, v7

    .line 174
    move-object v7, v12

    .line 175
    move-object/from16 v17, v12

    .line 176
    .line 177
    move-object v12, v8

    .line 178
    move v8, v15

    .line 179
    move/from16 v18, v13

    .line 180
    .line 181
    move v13, v9

    .line 182
    move-object v9, v2

    .line 183
    invoke-direct/range {v4 .. v9}, Lix6;-><init>(ZLteam/opay/pay/transaction/TransactionViewModel;Ljava/util/List;ILandroid/widget/PopupWindow;)V

    .line 184
    .line 185
    .line 186
    invoke-direct {v12, v14, v3, v13}, Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;-><init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lkotlin/jvm/functions/Function0;Z)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    add-int/lit8 v15, v15, 0x1

    .line 193
    .line 194
    move/from16 v4, v16

    .line 195
    .line 196
    move-object/from16 v12, v17

    .line 197
    .line 198
    move/from16 v13, v18

    .line 199
    .line 200
    const/4 v3, 0x0

    .line 201
    goto :goto_1

    .line 202
    :cond_5
    new-instance v3, Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;

    .line 203
    .line 204
    new-instance v6, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 205
    .line 206
    sget v7, Lteam/opay/pay/R$string;->wallet_filter_all_categories:I

    .line 207
    .line 208
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    sget-object v8, Lteam/opay/pay/transaction/CategoryType;->ALL:Lteam/opay/pay/transaction/CategoryType;

    .line 213
    .line 214
    const-string v9, "-1"

    .line 215
    .line 216
    invoke-direct {v6, v9, v7, v8}, Lteam/opay/pay/transaction/FilterTypeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transaction/CategoryType;)V

    .line 217
    .line 218
    .line 219
    new-instance v7, Ljx6;

    .line 220
    .line 221
    move-object/from16 v8, p3

    .line 222
    .line 223
    invoke-direct {v7, v8, v2}, Ljx6;-><init>(Lteam/opay/pay/transaction/TransactionViewModel;Landroid/widget/PopupWindow;)V

    .line 224
    .line 225
    .line 226
    xor-int/2addr v4, v5

    .line 227
    invoke-direct {v3, v6, v7, v4}, Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;-><init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lkotlin/jvm/functions/Function0;Z)V

    .line 228
    .line 229
    .line 230
    const/4 v4, 0x0

    .line 231
    invoke-interface {v11, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    .line 236
    .line 237
    new-instance v3, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 238
    .line 239
    invoke-direct {v3, v0, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    .line 243
    .line 244
    .line 245
    iget-object v0, v1, Lh62;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 246
    .line 247
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 248
    .line 249
    .line 250
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$FilterAdapter;

    .line 251
    .line 252
    invoke-direct {v0, v10}, Lteam/opay/pay/transaction/HistoryFilter$FilterAdapter;-><init>(Ljava/util/List;)V

    .line 253
    .line 254
    .line 255
    iget-object v1, v1, Lh62;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 256
    .line 257
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 258
    .line 259
    .line 260
    return-object v2
.end method

.method public final i(Landroid/app/Activity;Lteam/opay/pay/transaction/TransactionViewModel;)Landroid/widget/PopupWindow;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v2, Lteam/opay/pay/R$layout;->wallet_history_filters_popup:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lv4g;->bind(Landroid/view/View;)Lv4g;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "bind(...)"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroid/widget/PopupWindow;

    .line 24
    .line 25
    invoke-virtual {v1}, Lv4g;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, -0x1

    .line 30
    const/4 v5, -0x2

    .line 31
    invoke-direct {v2, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v1, Lv4g;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    .line 38
    invoke-direct {v4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    sget-object v4, Lteam/opay/pay/transaction/HistoryFilter;->b:[Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 50
    .line 51
    new-instance v5, Ljava/util/ArrayList;

    .line 52
    .line 53
    array-length v6, v4

    .line 54
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    array-length v6, v4

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v8, 0x0

    .line 60
    :goto_0
    if-ge v8, v6, :cond_0

    .line 61
    .line 62
    aget-object v9, v4, v8

    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-virtual {v9}, Lteam/opay/pay/transaction/HistoryFilter$Status;->getLabelId()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    add-int/lit8 v8, v8, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->T0(Ljava/util/Collection;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    const/4 v6, 0x0

    .line 91
    :goto_1
    const/4 v8, 0x1

    .line 92
    if-ge v6, v5, :cond_2

    .line 93
    .line 94
    sget-object v9, Lteam/opay/pay/transaction/HistoryFilter;->b:[Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 95
    .line 96
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transaction/TransactionViewModel;->M()Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    invoke-virtual {v10}, Lteam/opay/pay/transaction/HistoryFilter$Filter;->getStatus()Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-static {v9, v10}, Lkotlin/collections/a;->T([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-ne v6, v9, :cond_1

    .line 109
    .line 110
    const/4 v13, 0x1

    .line 111
    goto :goto_2

    .line 112
    :cond_1
    const/4 v13, 0x0

    .line 113
    :goto_2
    new-instance v8, Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;

    .line 114
    .line 115
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    move-object v11, v9

    .line 120
    check-cast v11, Ljava/lang/String;

    .line 121
    .line 122
    new-instance v12, Llx6;

    .line 123
    .line 124
    move-object/from16 v9, p2

    .line 125
    .line 126
    invoke-direct {v12, v13, v9, v6, v2}, Llx6;-><init>(ZLteam/opay/pay/transaction/TransactionViewModel;ILandroid/widget/PopupWindow;)V

    .line 127
    .line 128
    .line 129
    const/16 v16, 0x18

    .line 130
    .line 131
    const/16 v17, 0x0

    .line 132
    .line 133
    const/4 v14, 0x0

    .line 134
    const/4 v15, 0x0

    .line 135
    move-object v10, v8

    .line 136
    invoke-direct/range {v10 .. v17}, Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    add-int/lit8 v6, v6, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    new-instance v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 146
    .line 147
    invoke-direct {v4, v0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    .line 151
    .line 152
    .line 153
    iget-object v0, v1, Lv4g;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    .line 155
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, v1, Lv4g;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 159
    .line 160
    new-instance v1, Lteam/opay/pay/transaction/HistoryFilter$FilterAdapter;

    .line 161
    .line 162
    invoke-direct {v1, v3}, Lteam/opay/pay/transaction/HistoryFilter$FilterAdapter;-><init>(Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 166
    .line 167
    .line 168
    return-object v2
.end method

.method public final k()Lteam/opay/pay/transaction/HistoryFilter$Filter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/transaction/HistoryFilter;->g:Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l(Ljava/util/Date;Z)J
    .locals 6
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    sget-object p1, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;->Companion:Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig$Companion;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig$Companion;->a()Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;->getMaxTimeInterval()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-wide/16 v2, 0x16d

    .line 26
    .line 27
    :goto_0
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    cmp-long p1, v2, v4

    .line 30
    .line 31
    if-lez p1, :cond_2

    .line 32
    .line 33
    const-wide/16 v4, 0x1

    .line 34
    .line 35
    sub-long v4, v2, v4

    .line 36
    .line 37
    :cond_2
    const-wide/32 v2, 0x5265c00

    .line 38
    .line 39
    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    mul-long v4, v4, v2

    .line 43
    .line 44
    sub-long/2addr v0, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    .line 47
    .line 48
    .line 49
    mul-long v4, v4, v2

    .line 50
    .line 51
    add-long/2addr v0, v4

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    :goto_1
    return-wide v0
.end method

.method public final m(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p1, Lteam/opay/pay/transaction/HistoryFilter;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final n(Landroid/app/Activity;Ljava/util/List;Lteam/opay/pay/transaction/TransactionViewModel;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/transaction/TransactionViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lteam/opay/pay/transaction/FilterTypeInfo;",
            ">;",
            "Lteam/opay/pay/transaction/TransactionViewModel;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewModel"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    sget-object p2, Lteam/opay/pay/transaction/HistoryFilter;->c:Ljava/util/List;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/transaction/HistoryFilter;->f(Landroid/app/Activity;Ljava/util/List;Lteam/opay/pay/transaction/TransactionViewModel;)Landroid/widget/PopupWindow;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transaction/HistoryFilter;->o(Landroid/app/Activity;Landroid/widget/PopupWindow;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final o(Landroid/app/Activity;Landroid/widget/PopupWindow;)V
    .locals 3

    .line 1
    sget-boolean v0, Lteam/opay/pay/transaction/HistoryFilter;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8
    .line 9
    .line 10
    sget v1, Lteam/opay/pay/R$id;->wallet_filter_transaction_toolbar_root:I

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    sget v1, Lteam/opay/pay/R$id;->bottom_navigation_bar:I

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/view/ViewGroup;

    .line 26
    .line 27
    const v2, 0x3f333333    # 0.7f

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Lkmf;->c(Landroid/view/ViewGroup;F)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lkx6;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Lkx6;-><init>(Landroid/app/Activity;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 39
    .line 40
    .line 41
    sput-boolean v0, Lteam/opay/pay/transaction/HistoryFilter;->d:Z

    .line 42
    .line 43
    return-void
.end method

.method public final q(Landroid/app/Activity;Lteam/opay/pay/transaction/TransactionViewModel;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transaction/TransactionViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewModel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transaction/HistoryFilter;->i(Landroid/app/Activity;Lteam/opay/pay/transaction/TransactionViewModel;)Landroid/widget/PopupWindow;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transaction/HistoryFilter;->o(Landroid/app/Activity;Landroid/widget/PopupWindow;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
