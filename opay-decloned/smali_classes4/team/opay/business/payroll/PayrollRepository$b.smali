.class public final Lteam/opay/business/payroll/PayrollRepository$b;
.super Lteam/opay/core/http/arch/NetworkBoundResource;
.source "PayrollViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/payroll/PayrollRepository;->k(Lteam/opay/business/payroll/api/ServiceRequest;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/http/arch/NetworkBoundResource<",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/opb/transfer/bank/room/Service;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/opb/transfer/bank/room/Service;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000=\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\"\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0001J-\u0010\u0008\u001a \u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000b\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\nH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\u000e2\u0010\u0010\r\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0013\u001a\u00020\u00122\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u0004H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "team/opay/business/payroll/PayrollRepository$b",
        "Lteam/opay/core/http/arch/NetworkBoundResource;",
        "",
        "Lteam/opay/opb/transfer/bank/room/Service;",
        "Lteam/opay/business/payroll/ServiceList;",
        "Lteam/opay/core/http/arch/LiveDataCall;",
        "Lteam/opay/core/http/HttpResponse;",
        "Lteam/opay/business/payroll/api/ServiceResp;",
        "B",
        "()Lteam/opay/core/http/arch/LiveDataCall;",
        "Landroidx/lifecycle/LiveData;",
        "s",
        "()Landroidx/lifecycle/LiveData;",
        "item",
        "",
        "D",
        "(Ljava/util/List;)V",
        "data",
        "",
        "E",
        "(Ljava/util/List;)Z",
        "business-payroll_release"
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
.field public final synthetic c:Lteam/opay/business/payroll/PayrollRepository;

.field public final synthetic d:Lteam/opay/business/payroll/api/ServiceRequest;


# direct methods
.method public constructor <init>(Lteam/opay/business/payroll/PayrollRepository;Lteam/opay/business/payroll/api/ServiceRequest;Lteam/opay/core/http/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/payroll/PayrollRepository$b;->c:Lteam/opay/business/payroll/PayrollRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/payroll/PayrollRepository$b;->d:Lteam/opay/business/payroll/api/ServiceRequest;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/http/arch/NetworkBoundResource;-><init>(Lteam/opay/core/http/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic A(Lteam/opay/core/http/HttpResponse;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/payroll/PayrollRepository$b;->C(Lteam/opay/core/http/HttpResponse;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final C(Lteam/opay/core/http/HttpResponse;)Ljava/util/List;
    .locals 14

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/http/HttpResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/List;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object v2, v1

    .line 38
    check-cast v2, Lteam/opay/business/payroll/api/ServiceResp;

    .line 39
    .line 40
    invoke-virtual {v2}, Lteam/opay/business/payroll/api/ServiceResp;->h()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Lteam/opay/business/payroll/api/ServiceResp;->a()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .line 57
    .line 58
    const/16 v1, 0xa

    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_8

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lteam/opay/business/payroll/api/ServiceResp;

    .line 82
    .line 83
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/ServiceResp;->c()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string v3, ""

    .line 88
    .line 89
    if-nez v2, :cond_3

    .line 90
    .line 91
    move-object v5, v3

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    move-object v5, v2

    .line 94
    :goto_2
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/ServiceResp;->h()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    move-object v6, v3

    .line 101
    goto :goto_3

    .line 102
    :cond_4
    move-object v6, v2

    .line 103
    :goto_3
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/ServiceResp;->a()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/ServiceResp;->b()Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/ServiceResp;->d()Lteam/opay/core/common/amount/MoneyAmount;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-nez v2, :cond_5

    .line 116
    .line 117
    sget-object v2, Lteam/opay/core/common/amount/MoneyAmount;->Companion:Lteam/opay/core/common/amount/MoneyAmount$Companion;

    .line 118
    .line 119
    invoke-virtual {v2}, Lteam/opay/core/common/amount/MoneyAmount$Companion;->a()Lteam/opay/core/common/amount/MoneyAmount;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    :cond_5
    move-object v10, v2

    .line 124
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/ServiceResp;->g()Lteam/opay/core/common/amount/MoneyAmount;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-nez v2, :cond_6

    .line 129
    .line 130
    sget-object v2, Lteam/opay/core/common/amount/MoneyAmount;->Companion:Lteam/opay/core/common/amount/MoneyAmount$Companion;

    .line 131
    .line 132
    invoke-virtual {v2}, Lteam/opay/core/common/amount/MoneyAmount$Companion;->a()Lteam/opay/core/common/amount/MoneyAmount;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :cond_6
    move-object v9, v2

    .line 137
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/ServiceResp;->f()Z

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/ServiceResp;->e()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-nez v1, :cond_7

    .line 146
    .line 147
    const-string v1, "above"

    .line 148
    .line 149
    :cond_7
    move-object v13, v1

    .line 150
    new-instance v1, Lteam/opay/opb/transfer/bank/room/Service;

    .line 151
    .line 152
    const/4 v11, 0x0

    .line 153
    move-object v4, v1

    .line 154
    invoke-direct/range {v4 .. v13}, Lteam/opay/opb/transfer/bank/room/Service;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;ZZLjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_8
    return-object p0
.end method


# virtual methods
.method public B()Lteam/opay/core/http/arch/LiveDataCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/http/arch/LiveDataCall<",
            "Lteam/opay/core/http/HttpResponse<",
            "Ljava/util/List<",
            "Lteam/opay/business/payroll/api/ServiceResp;",
            ">;>;",
            "Ljava/util/List<",
            "Lteam/opay/opb/transfer/bank/room/Service;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/PayrollRepository$b;->c:Lteam/opay/business/payroll/PayrollRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/payroll/PayrollRepository;->c(Lteam/opay/business/payroll/PayrollRepository;)Lrv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/business/payroll/PayrollRepository$b;->d:Lteam/opay/business/payroll/api/ServiceRequest;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lrv;->f(Lteam/opay/business/payroll/api/ServiceRequest;)Lretrofit2/Call;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lilb;

    .line 14
    .line 15
    invoke-direct {v1}, Lilb;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v0, v3, v1, v2, v3}, Ly57;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/http/arch/LiveDataCall;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public D(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/opb/transfer/bank/room/Service;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/payroll/PayrollRepository$b;->c:Lteam/opay/business/payroll/PayrollRepository;

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v0, v1, v2}, Lteam/opay/business/payroll/PayrollRepository;->g(Lteam/opay/business/payroll/PayrollRepository;J)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/business/payroll/PayrollRepository$b;->c:Lteam/opay/business/payroll/PayrollRepository;

    .line 16
    .line 17
    invoke-static {v0}, Lteam/opay/business/payroll/PayrollRepository;->e(Lteam/opay/business/payroll/PayrollRepository;)Lteam/opay/opb/transfer/bank/room/ServicesDao;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Lteam/opay/opb/transfer/bank/room/ServicesDao;->e(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public E(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/opb/transfer/bank/room/Service;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lteam/opay/business/payroll/PayrollRepository$b;->c:Lteam/opay/business/payroll/PayrollRepository;

    .line 6
    .line 7
    invoke-static {p1}, Lteam/opay/business/payroll/PayrollRepository;->f(Lteam/opay/business/payroll/PayrollRepository;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v0, v2

    .line 12
    invoke-static {}, Lteam/opay/business/payroll/PayrollRepository;->d()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    cmp-long p1, v0, v2

    .line 17
    .line 18
    if-lez p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method

.method public bridge synthetic k()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/payroll/PayrollRepository$b;->B()Lteam/opay/core/http/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public s()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lteam/opay/opb/transfer/bank/room/Service;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/PayrollRepository$b;->c:Lteam/opay/business/payroll/PayrollRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/payroll/PayrollRepository;->e(Lteam/opay/business/payroll/PayrollRepository;)Lteam/opay/opb/transfer/bank/room/ServicesDao;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/opb/transfer/bank/room/ServicesDao;->c()Landroidx/lifecycle/LiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public bridge synthetic x(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/business/payroll/PayrollRepository$b;->D(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic z(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/business/payroll/PayrollRepository$b;->E(Ljava/util/List;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
