.class public final Lteam/opay/sme/store/api/BranchDetailResp;
.super Ljava/lang/Object;
.source "ApiData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008#\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0006\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0014H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001a\u0010\u001e\u001a\u00020\u001d2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\u001b\"\u0004\u0008\'\u0010(R*\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\"\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010%\u001a\u0004\u0008/\u0010\u001b\"\u0004\u00080\u0010(R*\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010*\u001a\u0004\u00082\u0010,\"\u0004\u00083\u0010.R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010%\u001a\u0004\u0008$\u0010\u001b\"\u0004\u00084\u0010(R*\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010*\u001a\u0004\u0008)\u0010,\"\u0004\u00085\u0010.R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008 \u0010<R\"\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008=\u0010*\u001a\u0004\u00081\u0010,R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008>\u0010?\u001a\u0004\u00086\u0010\u0019\u00a8\u0006@"
    }
    d2 = {
        "Lteam/opay/sme/store/api/BranchDetailResp;",
        "",
        "Lteam/opay/sme/store/api/BranchInfo;",
        "branch",
        "",
        "invitingEmployeeCount",
        "",
        "Lteam/opay/sme/store/api/EmployeeInfo;",
        "invitingEmployeeList",
        "normalEmployeeCount",
        "normalEmployeeList",
        "bindingPosCount",
        "Lteam/opay/sme/store/api/BindingPosInfo;",
        "bindingPosList",
        "Lteam/opay/core/http/BusinessInfo;",
        "commonWindow",
        "Lteam/opay/sme/store/api/BranchAccount;",
        "account",
        "Lteam/opay/sme/store/api/AuthBusiness;",
        "detailAuthList",
        "",
        "realBranchBindingPosAlert",
        "<init>",
        "(Lteam/opay/sme/store/api/BranchInfo;ILjava/util/List;ILjava/util/List;ILjava/util/List;Lteam/opay/core/http/BusinessInfo;Lteam/opay/sme/store/api/BranchAccount;Ljava/util/List;Ljava/lang/String;)V",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Lteam/opay/sme/store/api/BranchInfo;",
        "d",
        "()Lteam/opay/sme/store/api/BranchInfo;",
        "b",
        "I",
        "getInvitingEmployeeCount",
        "setInvitingEmployeeCount",
        "(I)V",
        "c",
        "Ljava/util/List;",
        "getInvitingEmployeeList",
        "()Ljava/util/List;",
        "setInvitingEmployeeList",
        "(Ljava/util/List;)V",
        "f",
        "setNormalEmployeeCount",
        "e",
        "g",
        "setNormalEmployeeList",
        "setBindingPosCount",
        "setBindingPosList",
        "h",
        "Lteam/opay/core/http/BusinessInfo;",
        "getCommonWindow",
        "()Lteam/opay/core/http/BusinessInfo;",
        "i",
        "Lteam/opay/sme/store/api/BranchAccount;",
        "()Lteam/opay/sme/store/api/BranchAccount;",
        "j",
        "k",
        "Ljava/lang/String;",
        "business-sme-store_release"
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
.field private final a:Lteam/opay/sme/store/api/BranchInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "branch"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invitingEmployeeCount"
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invitingEmployeeList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "normalEmployeeCount"
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "normalEmployeeList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bindingPosCount"
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bindingPosList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/BindingPosInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final h:Lteam/opay/core/http/BusinessInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "commonWindow"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final i:Lteam/opay/sme/store/api/BranchAccount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "detailAuthList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/AuthBusiness;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final k:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "realBranchBindingPosAlert"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/api/BranchInfo;ILjava/util/List;ILjava/util/List;ILjava/util/List;Lteam/opay/core/http/BusinessInfo;Lteam/opay/sme/store/api/BranchAccount;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lteam/opay/sme/store/api/BranchInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lteam/opay/core/http/BusinessInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lteam/opay/sme/store/api/BranchAccount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/api/BranchInfo;",
            "I",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
            ">;I",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
            ">;I",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/BindingPosInfo;",
            ">;",
            "Lteam/opay/core/http/BusinessInfo;",
            "Lteam/opay/sme/store/api/BranchAccount;",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/AuthBusiness;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/sme/store/api/BranchDetailResp;->a:Lteam/opay/sme/store/api/BranchInfo;

    .line 3
    iput p2, p0, Lteam/opay/sme/store/api/BranchDetailResp;->b:I

    .line 4
    iput-object p3, p0, Lteam/opay/sme/store/api/BranchDetailResp;->c:Ljava/util/List;

    .line 5
    iput p4, p0, Lteam/opay/sme/store/api/BranchDetailResp;->d:I

    .line 6
    iput-object p5, p0, Lteam/opay/sme/store/api/BranchDetailResp;->e:Ljava/util/List;

    .line 7
    iput p6, p0, Lteam/opay/sme/store/api/BranchDetailResp;->f:I

    .line 8
    iput-object p7, p0, Lteam/opay/sme/store/api/BranchDetailResp;->g:Ljava/util/List;

    .line 9
    iput-object p8, p0, Lteam/opay/sme/store/api/BranchDetailResp;->h:Lteam/opay/core/http/BusinessInfo;

    .line 10
    iput-object p9, p0, Lteam/opay/sme/store/api/BranchDetailResp;->i:Lteam/opay/sme/store/api/BranchAccount;

    .line 11
    iput-object p10, p0, Lteam/opay/sme/store/api/BranchDetailResp;->j:Ljava/util/List;

    .line 12
    iput-object p11, p0, Lteam/opay/sme/store/api/BranchDetailResp;->k:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/sme/store/api/BranchInfo;ILjava/util/List;ILjava/util/List;ILjava/util/List;Lteam/opay/core/http/BusinessInfo;Lteam/opay/sme/store/api/BranchAccount;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p12

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p11

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 13
    invoke-direct/range {v1 .. v12}, Lteam/opay/sme/store/api/BranchDetailResp;-><init>(Lteam/opay/sme/store/api/BranchInfo;ILjava/util/List;ILjava/util/List;ILjava/util/List;Lteam/opay/core/http/BusinessInfo;Lteam/opay/sme/store/api/BranchAccount;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/sme/store/api/BranchAccount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchDetailResp;->i:Lteam/opay/sme/store/api/BranchAccount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/sme/store/api/BranchDetailResp;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/BindingPosInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchDetailResp;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lteam/opay/sme/store/api/BranchInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchDetailResp;->a:Lteam/opay/sme/store/api/BranchInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/AuthBusiness;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchDetailResp;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/sme/store/api/BranchDetailResp;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/sme/store/api/BranchDetailResp;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/sme/store/api/BranchDetailResp;->a:Lteam/opay/sme/store/api/BranchInfo;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/sme/store/api/BranchDetailResp;->a:Lteam/opay/sme/store/api/BranchInfo;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget v1, p0, Lteam/opay/sme/store/api/BranchDetailResp;->b:I

    .line 25
    .line 26
    iget v3, p1, Lteam/opay/sme/store/api/BranchDetailResp;->b:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lteam/opay/sme/store/api/BranchDetailResp;->c:Ljava/util/List;

    .line 32
    .line 33
    iget-object v3, p1, Lteam/opay/sme/store/api/BranchDetailResp;->c:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget v1, p0, Lteam/opay/sme/store/api/BranchDetailResp;->d:I

    .line 43
    .line 44
    iget v3, p1, Lteam/opay/sme/store/api/BranchDetailResp;->d:I

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lteam/opay/sme/store/api/BranchDetailResp;->e:Ljava/util/List;

    .line 50
    .line 51
    iget-object v3, p1, Lteam/opay/sme/store/api/BranchDetailResp;->e:Ljava/util/List;

    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget v1, p0, Lteam/opay/sme/store/api/BranchDetailResp;->f:I

    .line 61
    .line 62
    iget v3, p1, Lteam/opay/sme/store/api/BranchDetailResp;->f:I

    .line 63
    .line 64
    if-eq v1, v3, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-object v1, p0, Lteam/opay/sme/store/api/BranchDetailResp;->g:Ljava/util/List;

    .line 68
    .line 69
    iget-object v3, p1, Lteam/opay/sme/store/api/BranchDetailResp;->g:Ljava/util/List;

    .line 70
    .line 71
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    iget-object v1, p0, Lteam/opay/sme/store/api/BranchDetailResp;->h:Lteam/opay/core/http/BusinessInfo;

    .line 79
    .line 80
    iget-object v3, p1, Lteam/opay/sme/store/api/BranchDetailResp;->h:Lteam/opay/core/http/BusinessInfo;

    .line 81
    .line 82
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_9

    .line 87
    .line 88
    return v2

    .line 89
    :cond_9
    iget-object v1, p0, Lteam/opay/sme/store/api/BranchDetailResp;->i:Lteam/opay/sme/store/api/BranchAccount;

    .line 90
    .line 91
    iget-object v3, p1, Lteam/opay/sme/store/api/BranchDetailResp;->i:Lteam/opay/sme/store/api/BranchAccount;

    .line 92
    .line 93
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_a

    .line 98
    .line 99
    return v2

    .line 100
    :cond_a
    iget-object v1, p0, Lteam/opay/sme/store/api/BranchDetailResp;->j:Ljava/util/List;

    .line 101
    .line 102
    iget-object v3, p1, Lteam/opay/sme/store/api/BranchDetailResp;->j:Ljava/util/List;

    .line 103
    .line 104
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_b

    .line 109
    .line 110
    return v2

    .line 111
    :cond_b
    iget-object v1, p0, Lteam/opay/sme/store/api/BranchDetailResp;->k:Ljava/lang/String;

    .line 112
    .line 113
    iget-object p1, p1, Lteam/opay/sme/store/api/BranchDetailResp;->k:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_c

    .line 120
    .line 121
    return v2

    .line 122
    :cond_c
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/sme/store/api/BranchDetailResp;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchDetailResp;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchDetailResp;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchDetailResp;->a:Lteam/opay/sme/store/api/BranchInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lteam/opay/sme/store/api/BranchInfo;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget v2, p0, Lteam/opay/sme/store/api/BranchDetailResp;->b:I

    .line 15
    .line 16
    add-int/2addr v0, v2

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v2, p0, Lteam/opay/sme/store/api/BranchDetailResp;->c:Ljava/util/List;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    :goto_1
    add-int/2addr v0, v2

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget v2, p0, Lteam/opay/sme/store/api/BranchDetailResp;->d:I

    .line 33
    .line 34
    add-int/2addr v0, v2

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-object v2, p0, Lteam/opay/sme/store/api/BranchDetailResp;->e:Ljava/util/List;

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    :goto_2
    add-int/2addr v0, v2

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget v2, p0, Lteam/opay/sme/store/api/BranchDetailResp;->f:I

    .line 51
    .line 52
    add-int/2addr v0, v2

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget-object v2, p0, Lteam/opay/sme/store/api/BranchDetailResp;->g:Ljava/util/List;

    .line 56
    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    :goto_3
    add-int/2addr v0, v2

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    .line 68
    iget-object v2, p0, Lteam/opay/sme/store/api/BranchDetailResp;->h:Lteam/opay/core/http/BusinessInfo;

    .line 69
    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    goto :goto_4

    .line 74
    :cond_4
    invoke-virtual {v2}, Lteam/opay/core/http/BusinessInfo;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    :goto_4
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-object v2, p0, Lteam/opay/sme/store/api/BranchDetailResp;->i:Lteam/opay/sme/store/api/BranchAccount;

    .line 82
    .line 83
    if-nez v2, :cond_5

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    goto :goto_5

    .line 87
    :cond_5
    invoke-virtual {v2}, Lteam/opay/sme/store/api/BranchAccount;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    :goto_5
    add-int/2addr v0, v2

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    .line 93
    .line 94
    iget-object v2, p0, Lteam/opay/sme/store/api/BranchDetailResp;->j:Ljava/util/List;

    .line 95
    .line 96
    if-nez v2, :cond_6

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    goto :goto_6

    .line 100
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    :goto_6
    add-int/2addr v0, v2

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    .line 106
    .line 107
    iget-object v2, p0, Lteam/opay/sme/store/api/BranchDetailResp;->k:Ljava/lang/String;

    .line 108
    .line 109
    if-nez v2, :cond_7

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    :goto_7
    add-int/2addr v0, v1

    .line 117
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchDetailResp;->a:Lteam/opay/sme/store/api/BranchInfo;

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/sme/store/api/BranchDetailResp;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/sme/store/api/BranchDetailResp;->c:Ljava/util/List;

    .line 6
    .line 7
    iget v3, p0, Lteam/opay/sme/store/api/BranchDetailResp;->d:I

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/sme/store/api/BranchDetailResp;->e:Ljava/util/List;

    .line 10
    .line 11
    iget v5, p0, Lteam/opay/sme/store/api/BranchDetailResp;->f:I

    .line 12
    .line 13
    iget-object v6, p0, Lteam/opay/sme/store/api/BranchDetailResp;->g:Ljava/util/List;

    .line 14
    .line 15
    iget-object v7, p0, Lteam/opay/sme/store/api/BranchDetailResp;->h:Lteam/opay/core/http/BusinessInfo;

    .line 16
    .line 17
    iget-object v8, p0, Lteam/opay/sme/store/api/BranchDetailResp;->i:Lteam/opay/sme/store/api/BranchAccount;

    .line 18
    .line 19
    iget-object v9, p0, Lteam/opay/sme/store/api/BranchDetailResp;->j:Ljava/util/List;

    .line 20
    .line 21
    iget-object v10, p0, Lteam/opay/sme/store/api/BranchDetailResp;->k:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v11, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v12, "BranchDetailResp(branch="

    .line 29
    .line 30
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", invitingEmployeeCount="

    .line 37
    .line 38
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", invitingEmployeeList="

    .line 45
    .line 46
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", normalEmployeeCount="

    .line 53
    .line 54
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", normalEmployeeList="

    .line 61
    .line 62
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", bindingPosCount="

    .line 69
    .line 70
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", bindingPosList="

    .line 77
    .line 78
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", commonWindow="

    .line 85
    .line 86
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", account="

    .line 93
    .line 94
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", detailAuthList="

    .line 101
    .line 102
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", realBranchBindingPosAlert="

    .line 109
    .line 110
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ")"

    .line 117
    .line 118
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
