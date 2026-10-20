.class public final Lteam/opay/core/account/GraphQLAccountWebService;
.super Ljava/lang/Object;
.source "AccountWebService.kt"

# interfaces
.implements Lfd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/account/GraphQLAccountWebService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0004\u0012\u00020\u000b0\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ#\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00100\u000f2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00100\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J#\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00100\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J!\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010)\u001a\u00020&8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0018\u0010,\u001a\u00020\u000b*\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/core/account/GraphQLAccountWebService;",
        "Lfd;",
        "Landroid/app/Application;",
        "application",
        "Lteam/opay/core/api/Features;",
        "features",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/api/Features;)V",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/core/api/graphql/RestResponse;",
        "Lteam/opay/core/api/GraphQL$UserProfile;",
        "Lteam/opay/core/account/AccountProfile;",
        "k",
        "()Lteam/opay/core/android/arch/LiveDataCall;",
        "accountProfile",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "i",
        "(Lteam/opay/core/account/AccountProfile;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/api/graphql/UserInfoReq;",
        "req",
        "Lteam/opay/core/api/graphql/UserInfoAggregateRsp;",
        "g",
        "(Lteam/opay/core/api/graphql/UserInfoReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/api/graphql/UserInfoSimpleRsp;",
        "h",
        "",
        "Lteam/opay/core/api/GraphQL$UserDocument;",
        "documents",
        "Lteam/opay/core/account/KycDocument;",
        "f",
        "(Ljava/util/List;)Lteam/opay/core/account/KycDocument;",
        "a",
        "Lteam/opay/core/api/Features;",
        "Lxt;",
        "b",
        "Lxt;",
        "api",
        "",
        "m",
        "()Z",
        "upgradeEnabled",
        "e",
        "(Lteam/opay/core/api/GraphQL$UserProfile;)Lteam/opay/core/account/AccountProfile;",
        "asAccountProfile",
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
.field public final a:Lteam/opay/core/api/Features;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lxt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/api/Features;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/Features;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "features"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lteam/opay/core/account/GraphQLAccountWebService;->a:Lteam/opay/core/api/Features;

    .line 15
    .line 16
    sget-object p2, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lteam/opay/core/api/GraphQL;->a(Landroid/content/Context;)Lxt;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lteam/opay/core/account/GraphQLAccountWebService;->b:Lxt;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic a(Lteam/opay/core/account/GraphQLAccountWebService;Lteam/opay/core/api/graphql/Response;)Lteam/opay/core/account/AccountProfile;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/account/GraphQLAccountWebService;->p(Lteam/opay/core/account/GraphQLAccountWebService;Lteam/opay/core/api/graphql/Response;)Lteam/opay/core/account/AccountProfile;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/UserInfoSimpleRsp;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/account/GraphQLAccountWebService;->o(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/UserInfoSimpleRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/core/account/GraphQLAccountWebService;Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/account/AccountProfile;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/account/GraphQLAccountWebService;->l(Lteam/opay/core/account/GraphQLAccountWebService;Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/account/AccountProfile;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/UserInfoAggregateRsp;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/account/GraphQLAccountWebService;->n(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final l(Lteam/opay/core/account/GraphQLAccountWebService;Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/account/AccountProfile;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/RestResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lteam/opay/core/api/GraphQL$UserProfile;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lteam/opay/core/account/GraphQLAccountWebService;->e(Lteam/opay/core/api/GraphQL$UserProfile;)Lteam/opay/core/account/AccountProfile;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    :cond_0
    sget-object p0, Lteam/opay/core/account/AccountRepository;->k:Lteam/opay/core/account/AccountRepository$Companion;

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/core/account/AccountRepository$Companion;->a()Lteam/opay/core/account/AccountProfile;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/account/AccountProfile;->G()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    sget-object p1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 40
    .line 41
    invoke-virtual {p1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, p0}, Lteam/opay/core/account/AccountInfoManager;->E(Lteam/opay/core/account/AccountProfile;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    return-object p0
.end method

.method public static final n(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/UserInfoAggregateRsp;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/RestResponse;->b()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lteam/opay/core/account/AccountInfoManager;->F(Lteam/opay/core/api/graphql/UserInfoAggregateRsp;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/RestResponse;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 26
    .line 27
    return-object p0
.end method

.method public static final o(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/UserInfoSimpleRsp;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/RestResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/core/api/graphql/UserInfoSimpleRsp;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final p(Lteam/opay/core/account/GraphQLAccountWebService;Lteam/opay/core/api/graphql/Response;)Lteam/opay/core/account/AccountProfile;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/Response;->b()Lteam/opay/core/api/GraphQL$Schema;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$Schema;->n()Lteam/opay/core/api/GraphQL$UserProfile;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lteam/opay/core/account/GraphQLAccountWebService;->e(Lteam/opay/core/api/GraphQL$UserProfile;)Lteam/opay/core/account/AccountProfile;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    :cond_0
    sget-object p0, Lteam/opay/core/account/AccountRepository;->k:Lteam/opay/core/account/AccountRepository$Companion;

    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/core/account/AccountRepository$Companion;->a()Lteam/opay/core/account/AccountProfile;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final e(Lteam/opay/core/api/GraphQL$UserProfile;)Lteam/opay/core/account/AccountProfile;
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->t()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->C()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->M()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->E()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->u()Lteam/opay/core/api/GraphQL$Gender;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->p()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->K()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->q()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->w()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v13

    .line 43
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->J()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v14

    .line 47
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->R()Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v22

    .line 51
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->L()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v23

    .line 55
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->B()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v24

    .line 59
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->o()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v25

    .line 63
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->l()Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v26

    .line 67
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->k()Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v27

    .line 71
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->r()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->Q()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v15

    .line 79
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->s()Z

    .line 80
    .line 81
    .line 82
    move-result v16

    .line 83
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->z()Lteam/opay/core/api/GraphQL$KycUpload;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/4 v12, 0x0

    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$KycUpload;->c()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    move-object v1, v12

    .line 96
    :goto_0
    invoke-virtual {v0, v1}, Lteam/opay/core/account/GraphQLAccountWebService;->f(Ljava/util/List;)Lteam/opay/core/account/KycDocument;

    .line 97
    .line 98
    .line 99
    move-result-object v17

    .line 100
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->z()Lteam/opay/core/api/GraphQL$KycUpload;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$KycUpload;->a()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    move-object v1, v12

    .line 112
    :goto_1
    invoke-virtual {v0, v1}, Lteam/opay/core/account/GraphQLAccountWebService;->f(Ljava/util/List;)Lteam/opay/core/account/KycDocument;

    .line 113
    .line 114
    .line 115
    move-result-object v18

    .line 116
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->z()Lteam/opay/core/api/GraphQL$KycUpload;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$KycUpload;->b()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    :cond_2
    invoke-virtual {v0, v12}, Lteam/opay/core/account/GraphQLAccountWebService;->f(Ljava/util/List;)Lteam/opay/core/account/KycDocument;

    .line 127
    .line 128
    .line 129
    move-result-object v19

    .line 130
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->A()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v21

    .line 134
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->I()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v20

    .line 138
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->i()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v41

    .line 142
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->d()Lteam/opay/core/api/GraphQL$AgentUpgrade;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_3

    .line 147
    .line 148
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->d()Lteam/opay/core/api/GraphQL$AgentUpgrade;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$AgentUpgrade;->a()Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_3

    .line 157
    .line 158
    const/4 v1, 0x1

    .line 159
    const/4 v12, 0x1

    .line 160
    goto :goto_2

    .line 161
    :cond_3
    const/4 v1, 0x0

    .line 162
    const/4 v12, 0x0

    .line 163
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->H()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v29

    .line 167
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->c()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v31

    .line 171
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->v()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v32

    .line 175
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->y()Lteam/opay/core/api/GraphQL$KycUpgradeInfo;

    .line 176
    .line 177
    .line 178
    move-result-object v35

    .line 179
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->x()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v36

    .line 183
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->h()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v37

    .line 187
    new-instance v1, Lteam/opay/core/account/AccountProfile;

    .line 188
    .line 189
    move-object/from16 v42, v1

    .line 190
    .line 191
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    move-result-object v28

    .line 195
    const/16 v39, 0x1

    .line 196
    .line 197
    const/16 v40, 0x0

    .line 198
    .line 199
    const/16 v30, 0x0

    .line 200
    .line 201
    const/16 v33, 0x0

    .line 202
    .line 203
    const/16 v34, 0x0

    .line 204
    .line 205
    const/high16 v38, -0x70000000

    .line 206
    .line 207
    move-object/from16 v12, v17

    .line 208
    .line 209
    move-object/from16 v17, v19

    .line 210
    .line 211
    move-object/from16 v19, v41

    .line 212
    .line 213
    invoke-direct/range {v1 .. v40}, Lteam/opay/core/account/AccountProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/account/KycDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLteam/opay/core/account/KycDocument;Lteam/opay/core/account/KycDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$KycUpgradeInfo;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->m()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    move-object/from16 v2, v42

    .line 221
    .line 222
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->Q(Ljava/util/List;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->g()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->O(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->f()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->N(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->D()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->U(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->n()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->R(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->e()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->M(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->G()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->X(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->F()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->W(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->b()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->K(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->N()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->Z(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->P()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->b0(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->O()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->a0(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->j()Lteam/opay/core/api/GraphQL$BvnBean;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->P(Lteam/opay/core/api/GraphQL$BvnBean;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->S()Ljava/lang/Boolean;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->T(Ljava/lang/Boolean;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserProfile;->T()Ljava/lang/Boolean;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountProfile;->Y(Ljava/lang/Boolean;)V

    .line 321
    .line 322
    .line 323
    return-object v2
.end method

.method public final f(Ljava/util/List;)Lteam/opay/core/account/KycDocument;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$UserDocument;",
            ">;)",
            "Lteam/opay/core/account/KycDocument;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    move-object v1, v0

    .line 10
    move-object v2, v1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x2

    .line 16
    if-eqz v3, :cond_4

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lteam/opay/core/api/GraphQL$UserDocument;

    .line 23
    .line 24
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$UserDocument;->b()Lteam/opay/core/api/GraphQL$DocumentStatus;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    const/4 v5, -0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sget-object v6, Lteam/opay/core/account/GraphQLAccountWebService$a;->a:[I

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    aget v5, v6, v5

    .line 39
    .line 40
    :goto_1
    const/4 v6, 0x1

    .line 41
    if-eq v5, v6, :cond_3

    .line 42
    .line 43
    if-eq v5, v4, :cond_2

    .line 44
    .line 45
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v1, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    move-object v2, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    if-eqz v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$UserDocument;->a()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_7

    .line 60
    .line 61
    :cond_5
    if-eqz v2, :cond_6

    .line 62
    .line 63
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$UserDocument;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_2

    .line 68
    :cond_6
    move-object p1, v0

    .line 69
    :cond_7
    :goto_2
    new-instance v1, Lteam/opay/core/account/KycDocument;

    .line 70
    .line 71
    if-nez p1, :cond_8

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_8
    invoke-direct {v1, p1, v0, v4, v0}, Lteam/opay/core/account/KycDocument;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    .line 76
    .line 77
    return-object v1
.end method

.method public g(Lteam/opay/core/api/graphql/UserInfoReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/core/api/graphql/UserInfoReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/graphql/UserInfoReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/core/api/graphql/UserInfoAggregateRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/account/GraphQLAccountWebService;->b:Lxt;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lxt;->g(Lteam/opay/core/api/graphql/UserInfoReq;)Lretrofit2/Call;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v1, Les6;

    .line 13
    .line 14
    invoke-direct {v1}, Les6;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1, v1}, Lsu;->e(Lxt;Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public h(Lteam/opay/core/api/graphql/UserInfoReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/core/api/graphql/UserInfoReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/graphql/UserInfoReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/core/api/graphql/UserInfoSimpleRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/account/GraphQLAccountWebService;->b:Lxt;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lxt;->a0(Lteam/opay/core/api/graphql/UserInfoReq;)Lretrofit2/Call;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v1, Lfs6;

    .line 13
    .line 14
    invoke-direct {v1}, Lfs6;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1, v1}, Lsu;->e(Lxt;Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public i(Lteam/opay/core/account/AccountProfile;)Landroidx/lifecycle/LiveData;
    .locals 27
    .param p1    # Lteam/opay/core/account/AccountProfile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/account/AccountProfile;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/core/account/AccountProfile;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "accountProfile"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lteam/opay/core/api/GraphQL$ProfileInput;

    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->p()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->w()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->E()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->r()Lteam/opay/core/api/GraphQL$Gender;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->l()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->C()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->a()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->m()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->I()Lteam/opay/core/account/KycDocument;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const/4 v12, 0x0

    .line 73
    if-eqz v3, :cond_0

    .line 74
    .line 75
    invoke-virtual {v3}, Lteam/opay/core/account/KycDocument;->a()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    move-object v13, v3

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    move-object v13, v12

    .line 82
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->H()Lteam/opay/core/account/KycDocument;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    invoke-virtual {v3}, Lteam/opay/core/account/KycDocument;->a()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    move-object v14, v3

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    move-object v14, v12

    .line 95
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->z()Lteam/opay/core/account/KycDocument;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-eqz v3, :cond_2

    .line 100
    .line 101
    invoke-virtual {v3}, Lteam/opay/core/account/KycDocument;->a()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object/from16 v26, v3

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    move-object/from16 v26, v12

    .line 109
    .line 110
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->u()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v15

    .line 114
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->D()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v16

    .line 118
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->v()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v17

    .line 122
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->k()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v18

    .line 126
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->g()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v19

    .line 130
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->A()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v20

    .line 134
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->d()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v21

    .line 138
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->e()Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object v22

    .line 142
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->t()Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v23

    .line 146
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->j()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v24

    .line 150
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/account/AccountProfile;->x()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v25

    .line 154
    move-object v3, v1

    .line 155
    move-object v12, v13

    .line 156
    move-object v13, v14

    .line 157
    move-object/from16 v14, v26

    .line 158
    .line 159
    invoke-direct/range {v3 .. v25}, Lteam/opay/core/api/GraphQL$ProfileInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v2, v0, Lteam/opay/core/account/GraphQLAccountWebService;->b:Lxt;

    .line 163
    .line 164
    sget-object v3, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 165
    .line 166
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/account/GraphQLAccountWebService;->m()Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    invoke-virtual {v3, v1, v4}, Lteam/opay/core/api/GraphQL;->k(Lteam/opay/core/api/GraphQL$ProfileInput;Z)Lteam/opay/core/api/graphql/Request;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    new-instance v3, Lgs6;

    .line 175
    .line 176
    invoke-direct {v3, v0}, Lgs6;-><init>(Lteam/opay/core/account/GraphQLAccountWebService;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v2, v1, v3}, Lsu;->g(Lxt;Lteam/opay/core/api/graphql/Request;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    return-object v1
.end method

.method public bridge synthetic j()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/account/GraphQLAccountWebService;->k()Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public k()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/core/api/graphql/RestResponse<",
            "Lteam/opay/core/api/GraphQL$UserProfile;",
            ">;",
            "Lteam/opay/core/account/AccountProfile;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/account/GraphQLAccountWebService;->b:Lxt;

    .line 2
    .line 3
    invoke-interface {v0}, Lxt;->S()Lretrofit2/Call;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lhs6;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lhs6;-><init>(Lteam/opay/core/account/GraphQLAccountWebService;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lsu;->e(Lxt;Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/account/GraphQLAccountWebService;->a:Lteam/opay/core/api/Features;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/api/Feature;->KYC:Lteam/opay/core/api/Feature;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/core/api/Features;->a(Lteam/opay/core/api/Feature;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
