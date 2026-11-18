.class final synthetic Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthTipsFragment$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "KycGuardianBirthTipsFragment.kt"

# interfaces
.implements Lhm6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthTipsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lhm6<",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "Ljava/lang/Boolean;",
        "Lm0b;",
        ">;"
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


# static fields
.field public static final INSTANCE:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthTipsFragment$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthTipsFragment$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthTipsFragment$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthTipsFragment$1;->INSTANCE:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthTipsFragment$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const-string v4, "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lteam/opay/pay/databinding/OsdkKycFragmentGuardianBirthTipsBinding;"

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v1, 0x3

    .line 5
    const-class v2, Lm0b;

    .line 6
    .line 7
    const-string v3, "inflate"

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroid/view/LayoutInflater;

    check-cast p2, Landroid/view/ViewGroup;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthTipsFragment$1;->invoke(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lm0b;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lm0b;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2, p3}, Lm0b;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lm0b;

    move-result-object p1

    return-object p1
.end method
