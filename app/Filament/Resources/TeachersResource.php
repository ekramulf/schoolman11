<?php

namespace App\Filament\Resources;

use App\Filament\Resources\TeachersResource\Pages;
use App\Filament\Resources\TeachersResource\RelationManagers;
use App\Models\Departments;
use App\Models\Teachers;
use Filament\Forms;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Forms\Components\FileUpload;
use Filament\Tables\Columns\ImageColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class TeachersResource extends Resource
{
    protected static ?string $model = Teachers::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $navigationGroup = 'System Management';
    protected static ?int $navigationSort = 2;

    // For Data Input
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
            //Select::make('deptcode')
            //    ->relationship(name: 'departments', titleAttribute: 'deptname')
            Select::make('deptcode')
                ->label('Department Code')
                ->options(Departments::query()->pluck('deptname', 'deptcode'))
                ->preload(),
            TextInput::make('teachcode')
                ->required()
                ->label('Teacher Id'),
            TextInput::make('firstname')
                ->required()
                ->label('First Name'),
            TextInput::make('lastname')
                ->required()
                ->label('Last Name'),
            Select::make('gender')
                ->required()
                ->label('Gender')
                ->options( [
                    'F' => 'Female',
                    'M' => 'Male'
                ] ),
            FileUpload::make('img')
                ->label('Upload Image')
                ->image()
                ->openable()
                ->downloadable()
                ->storeFileNamesIn('attachment_file_names')
                ->avatar()
                ->storeFiles(true),
            TextInput::make('dob')
                ->label('Date of Birth')
                ->required(),
            TextInput::make('mobile1')
                ->label('Mobile 1')
                ->required(),
            TextInput::make('mobile2')
                ->label('Mobile 2'),
            TextInput::make('email1')
                ->label('Email 1')
                ->required(),
            TextInput::make('email2')
                ->label('Email 2')
                ->required(),
            TextInput::make('address1')
                ->label('Present Address')
                ->default('')
                ->required(),
            TextInput::make('address2')
                ->label('Permanent Address')
                ->default(''),
            TextInput::make('spousename')
                ->label('Spouse Name')
                ->default(''),
            TextInput::make('smobile')
                ->label('Spouse Mobile')
                ->default(''),
            TextInput::make('startdate')
                ->label('Joining Date (YYYY-MM-DD)')
                ->default('2020-01-01'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //Select::make('deptcode')
                //    ->options(Departments::query()->pluck('deptname', 'deptcode'))
                //    ->preload(),
                TextColumn::make('teachcode')
                    ->label('Teacher Id'),
                TextColumn::make('firstname')
                    ->label('First Name')
                    ->searchable(),
                TextColumn::make('lastname')
                    ->label('Last Name')
                    ->searchable(),
                //TextColumn::make('img')
                //    ->label('Image')
                //    ->default(''),
                ImageColumn::make('img')
                    ->label('Image')
                    ->circular()
                    ->size(40)
                    ->defaultImageUrl(url('/images/user-avatar-placeholder.png')),
                TextColumn::make('dob')
                    ->label('Date of Birth'),
                TextColumn::make('mobile1')
                    ->label('Mobile 1'),
                TextColumn::make('mobile2')
                    ->label('Mobile 2'),
                TextColumn::make('email1')
                    ->label('Email 1'),
                TextColumn::make('email2')
                    ->label('Email 2'),
                TextColumn::make('address1')
                    ->label('Present Address')
                    ->default(''),
                TextColumn::make('address2')
                    ->label('Permanent Address')
                    ->default(''),
                TextColumn::make('spousename')
                    ->label('Spouse Name')
                    ->default(''),
                TextColumn::make('smobile')
                    ->label('Spouse Mobile')
                    ->default(''),
                TextColumn::make('startdate')
                    ->label('Joining Date (YYYY-MM-DD)')
                    ->default('2020-01-01'),
                ])
                ->filters([
                    //
                ])
                ->actions([
                    Tables\Actions\EditAction::make(),
                ])
                ->bulkActions([
                    Tables\Actions\BulkActionGroup::make([
                        Tables\Actions\DeleteBulkAction::make(),
                    ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListTeachers::route('/'),
            'create' => Pages\CreateTeachers::route('/create'),
            'edit' => Pages\EditTeachers::route('/{record}/edit'),
        ];
    }
}
