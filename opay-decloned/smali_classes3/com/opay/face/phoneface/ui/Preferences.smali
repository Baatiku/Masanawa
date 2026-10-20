.class public final Lcom/opay/face/phoneface/ui/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public a:Landroid/preference/CheckBoxPreference;

.field public b:Landroid/preference/CheckBoxPreference;

.field public c:Landroid/preference/CheckBoxPreference;


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
.method public final a()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v4, 0x3

    .line 7
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iget-object v5, p0, Lcom/opay/face/phoneface/ui/Preferences;->a:Landroid/preference/CheckBoxPreference;

    .line 11
    .line 12
    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    iget-object v5, p0, Lcom/opay/face/phoneface/ui/Preferences;->a:Landroid/preference/CheckBoxPreference;

    .line 19
    .line 20
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v5, p0, Lcom/opay/face/phoneface/ui/Preferences;->b:Landroid/preference/CheckBoxPreference;

    .line 24
    .line 25
    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    iget-object v5, p0, Lcom/opay/face/phoneface/ui/Preferences;->b:Landroid/preference/CheckBoxPreference;

    .line 32
    .line 33
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v5, p0, Lcom/opay/face/phoneface/ui/Preferences;->c:Landroid/preference/CheckBoxPreference;

    .line 37
    .line 38
    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    iget-object v5, p0, Lcom/opay/face/phoneface/ui/Preferences;->c:Landroid/preference/CheckBoxPreference;

    .line 45
    .line 46
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-ge v5, v1, :cond_3

    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 v5, 0x0

    .line 58
    :goto_0
    iget-object v6, p0, Lcom/opay/face/phoneface/ui/Preferences;->a:Landroid/preference/CheckBoxPreference;

    .line 59
    .line 60
    iget-object v7, p0, Lcom/opay/face/phoneface/ui/Preferences;->b:Landroid/preference/CheckBoxPreference;

    .line 61
    .line 62
    iget-object v8, p0, Lcom/opay/face/phoneface/ui/Preferences;->c:Landroid/preference/CheckBoxPreference;

    .line 63
    .line 64
    new-array v9, v4, [Landroid/preference/CheckBoxPreference;

    .line 65
    .line 66
    aput-object v6, v9, v0

    .line 67
    .line 68
    aput-object v7, v9, v2

    .line 69
    .line 70
    aput-object v8, v9, v1

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    :goto_1
    if-ge v1, v4, :cond_6

    .line 74
    .line 75
    aget-object v6, v9, v1

    .line 76
    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    invoke-interface {v3, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-nez v7, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    const/4 v7, 0x0

    .line 87
    goto :goto_3

    .line 88
    :cond_5
    :goto_2
    const/4 v7, 0x1

    .line 89
    :goto_3
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 90
    .line 91
    .line 92
    add-int/2addr v1, v2

    .line 93
    goto :goto_1

    .line 94
    :cond_6
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/phoneface/ui/Preferences;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
