.class public final Lteam/opay/spos/printer/function/PrintRecordReport;
.super Ljava/lang/Object;
.source "PrintRecordReport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J%\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ%\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u0003R!\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0010\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/spos/printer/function/PrintRecordReport;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/spos/printer/api/PosPrintExtendInfo;",
        "printInfo",
        "",
        "code",
        "deviceCode",
        "",
        "c",
        "(Lteam/opay/spos/printer/api/PosPrintExtendInfo;II)V",
        "d",
        "(IILteam/opay/spos/printer/api/PosPrintExtendInfo;)V",
        "e",
        "Lteam/opay/spos/printer/utils/FixedMutableList;",
        "b",
        "Lid8;",
        "()Lteam/opay/spos/printer/utils/FixedMutableList;",
        "pool",
        "spos-printer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/spos/printer/function/PrintRecordReport;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/printer/function/PrintRecordReport;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/spos/printer/function/PrintRecordReport;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/spos/printer/function/PrintRecordReport;->a:Lteam/opay/spos/printer/function/PrintRecordReport;

    .line 7
    .line 8
    sget-object v0, Lteam/opay/spos/printer/function/PrintRecordReport$pool$2;->INSTANCE:Lteam/opay/spos/printer/function/PrintRecordReport$pool$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lteam/opay/spos/printer/function/PrintRecordReport;->b:Lid8;

    .line 15
    .line 16
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

.method public static final synthetic a(Lteam/opay/spos/printer/function/PrintRecordReport;)Lteam/opay/spos/printer/utils/FixedMutableList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/PrintRecordReport;->b()Lteam/opay/spos/printer/utils/FixedMutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final b()Lteam/opay/spos/printer/utils/FixedMutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/spos/printer/utils/FixedMutableList<",
            "Lteam/opay/spos/printer/api/PosPrintExtendInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/printer/function/PrintRecordReport;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/spos/printer/utils/FixedMutableList;

    .line 8
    .line 9
    return-object v0
.end method

.method public final c(Lteam/opay/spos/printer/api/PosPrintExtendInfo;II)V
    .locals 19
    .param p1    # Lteam/opay/spos/printer/api/PosPrintExtendInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v0, "printInfo"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 v17, 0x3fff

    .line 11
    .line 12
    const/16 v18, 0x0

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const-wide/16 v6, 0x0

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v12, 0x0

    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v14, 0x0

    .line 27
    const/4 v15, 0x0

    .line 28
    const/16 v16, 0x0

    .line 29
    .line 30
    invoke-static/range {v1 .. v18}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->copy$default(Lteam/opay/spos/printer/api/PosPrintExtendInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 35
    .line 36
    invoke-virtual {v1}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderAmount()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    new-instance v2, Ljava/math/BigDecimal;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/math/BigDecimal;

    .line 48
    .line 49
    const/16 v3, 0x64

    .line 50
    .line 51
    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-static {v0}, Lgfg;->a(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    goto :goto_2

    .line 79
    :goto_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const-string v3, ""

    .line 94
    .line 95
    if-eqz v2, :cond_1

    .line 96
    .line 97
    move-object v2, v0

    .line 98
    check-cast v2, Ljava/lang/String;

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_1
    move-object v2, v3

    .line 102
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    invoke-virtual {v1}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderAmount()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :cond_2
    if-nez v2, :cond_3

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_3
    move-object v3, v2

    .line 116
    :goto_4
    invoke-virtual {v1, v3}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->setOrderAmount(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual/range {p0 .. p0}, Lteam/opay/spos/printer/function/PrintRecordReport;->b()Lteam/opay/spos/printer/utils/FixedMutableList;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, v1}, Lteam/opay/spos/printer/utils/FixedMutableList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    sget-object v0, Lteam/opay/spos/printer/internal/PrinterStorge;->a:Lteam/opay/spos/printer/internal/PrinterStorge;

    .line 127
    .line 128
    invoke-virtual/range {p0 .. p0}, Lteam/opay/spos/printer/function/PrintRecordReport;->b()Lteam/opay/spos/printer/utils/FixedMutableList;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v0, v2}, Lteam/opay/spos/printer/internal/PrinterStorge;->j(Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    move-object/from16 v2, p0

    .line 136
    .line 137
    move/from16 v3, p2

    .line 138
    .line 139
    move/from16 v4, p3

    .line 140
    .line 141
    invoke-virtual {v2, v3, v4, v1}, Lteam/opay/spos/printer/function/PrintRecordReport;->d(IILteam/opay/spos/printer/api/PosPrintExtendInfo;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final d(IILteam/opay/spos/printer/api/PosPrintExtendInfo;)V
    .locals 7
    .param p3    # Lteam/opay/spos/printer/api/PosPrintExtendInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "printInfo"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, ""

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p1, "cancel"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string p1, "noPaper"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const-string p1, "fail"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    const-string p1, "success"

    .line 45
    .line 46
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getExtendInfoMap()Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/util/Map$Entry;

    .line 76
    .line 77
    new-instance v3, Lkotlin/Pair;

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-direct {v3, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    sget-object v1, Lxqe;->a:Lxqe;

    .line 95
    .line 96
    sget-object v2, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 97
    .line 98
    invoke-virtual {v2}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    new-instance v3, Lkotlin/jvm/internal/SpreadBuilder;

    .line 107
    .line 108
    const/16 v4, 0xb

    .line 109
    .line 110
    invoke-direct {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 111
    .line 112
    .line 113
    new-instance v4, Lkotlin/Pair;

    .line 114
    .line 115
    const-string v5, "printType"

    .line 116
    .line 117
    invoke-virtual {p3}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getPrintType()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    new-instance v4, Lkotlin/Pair;

    .line 128
    .line 129
    const-string v5, "printCount"

    .line 130
    .line 131
    invoke-virtual {p3}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getPrintCount()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    new-instance v4, Lkotlin/Pair;

    .line 142
    .line 143
    const-string v5, "printCouplet"

    .line 144
    .line 145
    invoke-virtual {p3}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getPrintCouplet()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    new-instance v4, Lkotlin/Pair;

    .line 156
    .line 157
    invoke-virtual {p3}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->isSupportSecond()Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    const-string v6, "isSupportSecond"

    .line 166
    .line 167
    invoke-direct {v4, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    new-instance v4, Lkotlin/Pair;

    .line 174
    .line 175
    const-string v5, "printState"

    .line 176
    .line 177
    invoke-direct {v4, v5, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    new-instance p1, Lkotlin/Pair;

    .line 184
    .line 185
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    const-string v4, "printResultCode"

    .line 190
    .line 191
    invoke-direct {p1, v4, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, p1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    new-instance p1, Lkotlin/Pair;

    .line 198
    .line 199
    const-string p2, "orderType"

    .line 200
    .line 201
    invoke-virtual {p3}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderType()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-direct {p1, p2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, p1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    new-instance p1, Lkotlin/Pair;

    .line 212
    .line 213
    const-string p2, "orderNum"

    .line 214
    .line 215
    invoke-virtual {p3}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderId()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-direct {p1, p2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3, p1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    new-instance p1, Lkotlin/Pair;

    .line 226
    .line 227
    const-string p2, "orderStatus"

    .line 228
    .line 229
    invoke-virtual {p3}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderStatus()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-direct {p1, p2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, p1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    new-instance p1, Lkotlin/Pair;

    .line 240
    .line 241
    const-string p2, "isVerifyPin"

    .line 242
    .line 243
    invoke-virtual {p3}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->isVerifyPin()Ljava/lang/Boolean;

    .line 244
    .line 245
    .line 246
    move-result-object p3

    .line 247
    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, p1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    const/4 p1, 0x0

    .line 254
    new-array p1, p1, [Lkotlin/Pair;

    .line 255
    .line 256
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 261
    .line 262
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3, p1}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Lkotlin/jvm/internal/SpreadBuilder;->c()I

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    new-array p1, p1, [Lkotlin/Pair;

    .line 273
    .line 274
    invoke-virtual {v3, p1}, Lkotlin/jvm/internal/SpreadBuilder;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    check-cast p1, [Lkotlin/Pair;

    .line 279
    .line 280
    const-string p2, "PrintAction"

    .line 281
    .line 282
    invoke-virtual {v1, v2, p2, p1}, Lxqe;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 283
    .line 284
    .line 285
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/PrintRecordReport;->b()Lteam/opay/spos/printer/utils/FixedMutableList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/spos/printer/utils/FixedMutableList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v0, Lcl8;->c:Lcl8;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "pool size is : "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/PrintRecordReport;->b()Lteam/opay/spos/printer/utils/FixedMutableList;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lteam/opay/spos/printer/utils/FixedMutableList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x2

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static {v0, v1, v3, v2, v3}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lteam/opay/spos/printer/function/PrintRecordReport$upload$1;

    .line 45
    .line 46
    invoke-direct {v0, v3}, Lteam/opay/spos/printer/function/PrintRecordReport$upload$1;-><init>(Ljr2;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lteam/opay/kotlin/coroutine/CoroutineScopeKt;->e(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/l;

    .line 50
    .line 51
    .line 52
    return-void
.end method
